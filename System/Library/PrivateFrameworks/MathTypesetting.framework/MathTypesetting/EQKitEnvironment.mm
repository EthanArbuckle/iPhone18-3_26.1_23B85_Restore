@interface EQKitEnvironment
+ (EQKitEnvironment)defaultEnvironment;
+ (NSData)defaultEnvironmentData;
+ (NSSet)legacySTIXFontNames;
+ (id)createDefaultEnvironment;
+ (id)i_operatorDictionaryURL;
+ (id)propertyListWithData:(id)data error:(id *)error;
- (BOOL)fontsLoadedCorrectly;
- (BOOL)i_requiresLegacySTIXFonts;
- (BOOL)needsToReloadFontsWhenAddingFontNamed:(id)named;
- (EQKitEnvironment)initWithConfig:(id)config;
- (EQKitEnvironment)initWithData:(id)data;
- (NSData)data;
- (NSString)mathFontName;
- (__CTFont)defaultFontOfSize:(double)size;
- (id)copyWithZone:(_NSZone *)zone;
- (id)i_configCopy;
- (id)i_fontsDictionary;
- (id)i_mathFontName;
- (void)beginLayout;
- (void)dealloc;
- (void)endLayout;
- (void)setMathFontName:(id)name;
- (void)setUsesLegacySTIXFonts:(BOOL)fonts;
@end

@implementation EQKitEnvironment

- (EQKitEnvironment)initWithConfig:(id)config
{
  configCopy = config;
  v17.receiver = self;
  v17.super_class = EQKitEnvironment;
  v6 = [(EQKitEnvironment *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_config, config);
    v8 = +[EQKitEnvironment i_operatorDictionaryURL];
    v7->_operatorDictionary = EQKit::Config::Operator::Dictionary::dictionaryFromURL(v8, v9);

    v10 = objc_opt_class();
    v11 = [(NSMutableDictionary *)v7->_config objectForKeyedSubscript:@"version"];
    v12 = EQKitUtilDynamicCast(v10, v11);
    EQKit::Environment::Version::Version(&v16, v12);

    i_fontsDictionary = [(EQKitEnvironment *)v7 i_fontsDictionary];
    if (v16 <= 4)
    {
      v14 = +[EQKitEnvironment defaultMathFontName];
      [i_fontsDictionary setObject:v14 forKeyedSubscript:@"mathFontName"];

      [i_fontsDictionary setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"requiresLegacySTIXFonts"];
    }

    operator new();
  }

  return 0;
}

- (EQKitEnvironment)initWithData:(id)data
{
  v8 = 0;
  v4 = [EQKitEnvironment propertyListWithData:data error:&v8];
  v5 = v8;
  v6 = [(EQKitEnvironment *)self initWithConfig:v4];

  return v6;
}

- (void)dealloc
{
  operatorDictionary = self->_operatorDictionary;
  if (operatorDictionary)
  {
    EQKit::Config::Operator::Dictionary::~Dictionary(operatorDictionary);
    MEMORY[0x259C7CB70]();
  }

  fontManager = self->_fontManager;
  if (fontManager)
  {
    (*(fontManager->var0 + 1))(fontManager, a2);
  }

  kerningManager = self->_kerningManager;
  if (kerningManager)
  {
    EQKit::Kerning::Manager::~Manager(kerningManager);
    MEMORY[0x259C7CB70]();
  }

  layoutConfig = self->_layoutConfig;
  if (layoutConfig)
  {
    MEMORY[0x259C7CB70](layoutConfig, 0x1000C4000313F17);
  }

  blahtexConfig = self->_blahtexConfig;
  if (blahtexConfig)
  {
    std::__hash_table<wchar_t,std::hash<wchar_t>,std::equal_to<wchar_t>,std::allocator<wchar_t>>::~__hash_table(blahtexConfig + 40);
    v8 = std::__hash_table<wchar_t,std::hash<wchar_t>,std::equal_to<wchar_t>,std::allocator<wchar_t>>::~__hash_table(blahtexConfig);
    MEMORY[0x259C7CB70](v8, 0x10A0C40864A76ABLL);
  }

  v9.receiver = self;
  v9.super_class = EQKitEnvironment;
  [(EQKitEnvironment *)&v9 dealloc];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [EQKitEnvironment alloc];
  i_configCopy = [(EQKitEnvironment *)self i_configCopy];
  v6 = [(EQKitEnvironment *)v4 initWithConfig:i_configCopy];

  return v6;
}

- (NSData)data
{
  config = self->_config;
  v5 = 0;
  v3 = [MEMORY[0x277CCAC58] dataWithPropertyList:config format:100 options:0 error:&v5];

  return v3;
}

+ (id)propertyListWithData:(id)data error:(id *)error
{
  dataCopy = data;
  v10 = 0;
  v6 = objc_opt_class();
  v7 = [MEMORY[0x277CCAC58] propertyListWithData:dataCopy options:1 format:&v10 error:error];
  v8 = EQKitUtilDynamicCast(v6, v7);

  return v8;
}

+ (EQKitEnvironment)defaultEnvironment
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__EQKitEnvironment_defaultEnvironment__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (+[EQKitEnvironment defaultEnvironment]::onceToken != -1)
  {
    dispatch_once(&+[EQKitEnvironment defaultEnvironment]::onceToken, block);
  }

  v2 = +[EQKitEnvironment defaultEnvironment]::sInstance;

  return v2;
}

uint64_t __38__EQKitEnvironment_defaultEnvironment__block_invoke(uint64_t a1)
{
  +[EQKitEnvironment defaultEnvironment]::sInstance = [*(a1 + 32) createDefaultEnvironment];

  return MEMORY[0x2821F96F8]();
}

+ (id)createDefaultEnvironment
{
  defaultEnvironmentData = [self defaultEnvironmentData];
  if (!defaultEnvironmentData || (v6 = 0, [EQKitEnvironment propertyListWithData:defaultEnvironmentData error:&v6], (dictionary = objc_claimAutoreleasedReturnValue()) == 0))
  {
    dictionary = [MEMORY[0x277CBEB38] dictionary];
  }

  v4 = [[EQKitEnvironment alloc] initWithConfig:dictionary];

  return v4;
}

+ (NSData)defaultEnvironmentData
{
  if (+[EQKitEnvironment defaultEnvironmentData]::onceToken != -1)
  {
    +[EQKitEnvironment defaultEnvironmentData];
  }

  v3 = +[EQKitEnvironment defaultEnvironmentData]::sInstance;

  return v3;
}

void __42__EQKitEnvironment_defaultEnvironmentData__block_invoke()
{
  v0 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v1 = v0;
  if (v0)
  {
    v2 = [v0 pathForResource:@"EQKitDefaultEnvironment" ofType:@"plist"];
    if (v2)
    {
      v3 = [MEMORY[0x277CBEBC0] fileURLWithPath:v2];
      v7 = 0;
      v4 = [objc_alloc(MEMORY[0x277CBEA90]) initWithContentsOfURL:v3 options:2 error:&v7];
      v5 = v7;
      v6 = +[EQKitEnvironment defaultEnvironmentData]::sInstance;
      +[EQKitEnvironment defaultEnvironmentData]::sInstance = v4;
    }
  }
}

- (void)setUsesLegacySTIXFonts:(BOOL)fonts
{
  fontsCopy = fonts;
  if ([(EQKitEnvironment *)self i_requiresLegacySTIXFonts]!= fonts)
  {
    i_fontsDictionary = [(EQKitEnvironment *)self i_fontsDictionary];
    v5 = [MEMORY[0x277CCABB0] numberWithBool:fontsCopy];
    [i_fontsDictionary setObject:v5 forKeyedSubscript:@"requiresLegacySTIXFonts"];

    [(EQKitEnvironment *)self reloadFonts];
  }
}

+ (NSSet)legacySTIXFontNames
{
  if (+[EQKitEnvironment legacySTIXFontNames]::onceToken != -1)
  {
    +[EQKitEnvironment legacySTIXFontNames];
  }

  v3 = +[EQKitEnvironment legacySTIXFontNames]::sLegacySTIXFontNamesSet;

  return v3;
}

uint64_t __39__EQKitEnvironment_legacySTIXFontNames__block_invoke()
{
  +[EQKitEnvironment legacySTIXFontNames]::sLegacySTIXFontNamesSet = [objc_alloc(MEMORY[0x277CBEB98]) initWithArray:&unk_286973AF8];

  return MEMORY[0x2821F96F8]();
}

- (void)setMathFontName:(id)name
{
  nameCopy = name;
  mathFontName = [(EQKitEnvironment *)self mathFontName];
  v5 = [mathFontName isEqualToString:nameCopy];

  if ((v5 & 1) == 0)
  {
    i_fontsDictionary = [(EQKitEnvironment *)self i_fontsDictionary];
    v7 = [nameCopy copy];
    [i_fontsDictionary setObject:v7 forKeyedSubscript:@"mathFontName"];

    if (![(EQKitEnvironment *)self usesLegacySTIXFonts])
    {
      [(EQKitEnvironment *)self reloadFonts];
    }
  }
}

- (NSString)mathFontName
{
  i_mathFontName = [(EQKitEnvironment *)self i_mathFontName];
  v3 = i_mathFontName;
  if (i_mathFontName)
  {
    v4 = i_mathFontName;
  }

  else
  {
    v4 = +[EQKitEnvironment defaultMathFontName];
  }

  v5 = v4;

  return v5;
}

- (BOOL)needsToReloadFontsWhenAddingFontNamed:(id)named
{
  namedCopy = named;
  if ([(EQKitEnvironment *)self usesLegacySTIXFonts])
  {
    mathFontName = +[EQKitEnvironment legacySTIXFontNames];
    v6 = [mathFontName containsObject:namedCopy];
  }

  else
  {
    mathFontName = [(EQKitEnvironment *)self mathFontName];
    v6 = [mathFontName isEqualToString:namedCopy];
  }

  v7 = v6;

  return v7;
}

- (BOOL)fontsLoadedCorrectly
{
  v2 = *(*EQKit::Font::Manager::fontCollection(self->_fontManager) + 32);

  return v2();
}

- (__CTFont)defaultFontOfSize:(double)size
{
  v6 = 0;
  v7 = 1;
  v8 = 0;
  v9 = 3;
  sizeCopy = size;
  v11 = 0;
  v12 = 0;
  v3 = EQKit::Font::Manager::fontCollection(self->_fontManager);
  v4 = (*(*v3 + 72))(v3, &v6);

  return v4;
}

- (id)i_configCopy
{
  v2 = [(NSMutableDictionary *)self->_config mutableCopy];
  v3 = [v2 objectForKeyedSubscript:@"fonts"];
  v4 = [v3 mutableCopy];
  [v2 setObject:v4 forKeyedSubscript:@"fonts"];

  return v2;
}

+ (id)i_operatorDictionaryURL
{
  v2 = [MEMORY[0x277CCA8D8] bundleForClass:objc_opt_class()];
  v3 = [v2 pathForResource:@"EQKitOperatorDictionary" ofType:@"plist"];
  v4 = [MEMORY[0x277CBEBC0] fileURLWithPath:v3];

  return v4;
}

- (id)i_fontsDictionary
{
  v3 = objc_opt_class();
  v4 = [(NSMutableDictionary *)self->_config objectForKeyedSubscript:@"fonts"];
  v5 = EQKitUtilDynamicCast(v3, v4);

  return v5;
}

- (id)i_mathFontName
{
  i_fontsDictionary = [(EQKitEnvironment *)self i_fontsDictionary];
  v3 = objc_opt_class();
  v4 = [i_fontsDictionary objectForKeyedSubscript:@"mathFontName"];
  v5 = EQKitUtilDynamicCast(v3, v4);

  return v5;
}

- (BOOL)i_requiresLegacySTIXFonts
{
  i_fontsDictionary = [(EQKitEnvironment *)self i_fontsDictionary];
  v3 = objc_opt_class();
  v4 = [i_fontsDictionary objectForKeyedSubscript:@"requiresLegacySTIXFonts"];
  v5 = EQKitUtilDynamicCast(v3, v4);

  if (v5)
  {
    bOOLValue = [v5 BOOLValue];
  }

  else
  {
    bOOLValue = 1;
  }

  return bOOLValue;
}

- (void)beginLayout
{
  EQKit::Font::Manager::beginLayout(self->_fontManager);
  kerningManager = self->_kerningManager;

  EQKit::Kerning::Manager::beginLayout(kerningManager);
}

- (void)endLayout
{
  EQKit::Kerning::Manager::endLayout(self->_kerningManager);
  fontManager = self->_fontManager;

  EQKit::Font::Manager::endLayout(fontManager);
}

@end