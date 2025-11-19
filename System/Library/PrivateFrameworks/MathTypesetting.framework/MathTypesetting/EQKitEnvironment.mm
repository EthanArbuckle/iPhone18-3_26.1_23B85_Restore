@interface EQKitEnvironment
+ (EQKitEnvironment)defaultEnvironment;
+ (NSData)defaultEnvironmentData;
+ (NSSet)legacySTIXFontNames;
+ (id)createDefaultEnvironment;
+ (id)i_operatorDictionaryURL;
+ (id)propertyListWithData:(id)a3 error:(id *)a4;
- (BOOL)fontsLoadedCorrectly;
- (BOOL)i_requiresLegacySTIXFonts;
- (BOOL)needsToReloadFontsWhenAddingFontNamed:(id)a3;
- (EQKitEnvironment)initWithConfig:(id)a3;
- (EQKitEnvironment)initWithData:(id)a3;
- (NSData)data;
- (NSString)mathFontName;
- (__CTFont)defaultFontOfSize:(double)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)i_configCopy;
- (id)i_fontsDictionary;
- (id)i_mathFontName;
- (void)beginLayout;
- (void)dealloc;
- (void)endLayout;
- (void)setMathFontName:(id)a3;
- (void)setUsesLegacySTIXFonts:(BOOL)a3;
@end

@implementation EQKitEnvironment

- (EQKitEnvironment)initWithConfig:(id)a3
{
  v5 = a3;
  v17.receiver = self;
  v17.super_class = EQKitEnvironment;
  v6 = [(EQKitEnvironment *)&v17 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_config, a3);
    v8 = +[EQKitEnvironment i_operatorDictionaryURL];
    v7->_operatorDictionary = EQKit::Config::Operator::Dictionary::dictionaryFromURL(v8, v9);

    v10 = objc_opt_class();
    v11 = [(NSMutableDictionary *)v7->_config objectForKeyedSubscript:@"version"];
    v12 = EQKitUtilDynamicCast(v10, v11);
    EQKit::Environment::Version::Version(&v16, v12);

    v13 = [(EQKitEnvironment *)v7 i_fontsDictionary];
    if (v16 <= 4)
    {
      v14 = +[EQKitEnvironment defaultMathFontName];
      [v13 setObject:v14 forKeyedSubscript:@"mathFontName"];

      [v13 setObject:MEMORY[0x277CBEC38] forKeyedSubscript:@"requiresLegacySTIXFonts"];
    }

    operator new();
  }

  return 0;
}

- (EQKitEnvironment)initWithData:(id)a3
{
  v8 = 0;
  v4 = [EQKitEnvironment propertyListWithData:a3 error:&v8];
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

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [EQKitEnvironment alloc];
  v5 = [(EQKitEnvironment *)self i_configCopy];
  v6 = [(EQKitEnvironment *)v4 initWithConfig:v5];

  return v6;
}

- (NSData)data
{
  config = self->_config;
  v5 = 0;
  v3 = [MEMORY[0x277CCAC58] dataWithPropertyList:config format:100 options:0 error:&v5];

  return v3;
}

+ (id)propertyListWithData:(id)a3 error:(id *)a4
{
  v5 = a3;
  v10 = 0;
  v6 = objc_opt_class();
  v7 = [MEMORY[0x277CCAC58] propertyListWithData:v5 options:1 format:&v10 error:a4];
  v8 = EQKitUtilDynamicCast(v6, v7);

  return v8;
}

+ (EQKitEnvironment)defaultEnvironment
{
  block[0] = MEMORY[0x277D85DD0];
  block[1] = 3221225472;
  block[2] = __38__EQKitEnvironment_defaultEnvironment__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = a1;
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
  v2 = [a1 defaultEnvironmentData];
  if (!v2 || (v6 = 0, [EQKitEnvironment propertyListWithData:v2 error:&v6], (v3 = objc_claimAutoreleasedReturnValue()) == 0))
  {
    v3 = [MEMORY[0x277CBEB38] dictionary];
  }

  v4 = [[EQKitEnvironment alloc] initWithConfig:v3];

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

- (void)setUsesLegacySTIXFonts:(BOOL)a3
{
  v3 = a3;
  if ([(EQKitEnvironment *)self i_requiresLegacySTIXFonts]!= a3)
  {
    v6 = [(EQKitEnvironment *)self i_fontsDictionary];
    v5 = [MEMORY[0x277CCABB0] numberWithBool:v3];
    [v6 setObject:v5 forKeyedSubscript:@"requiresLegacySTIXFonts"];

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

- (void)setMathFontName:(id)a3
{
  v8 = a3;
  v4 = [(EQKitEnvironment *)self mathFontName];
  v5 = [v4 isEqualToString:v8];

  if ((v5 & 1) == 0)
  {
    v6 = [(EQKitEnvironment *)self i_fontsDictionary];
    v7 = [v8 copy];
    [v6 setObject:v7 forKeyedSubscript:@"mathFontName"];

    if (![(EQKitEnvironment *)self usesLegacySTIXFonts])
    {
      [(EQKitEnvironment *)self reloadFonts];
    }
  }
}

- (NSString)mathFontName
{
  v2 = [(EQKitEnvironment *)self i_mathFontName];
  v3 = v2;
  if (v2)
  {
    v4 = v2;
  }

  else
  {
    v4 = +[EQKitEnvironment defaultMathFontName];
  }

  v5 = v4;

  return v5;
}

- (BOOL)needsToReloadFontsWhenAddingFontNamed:(id)a3
{
  v4 = a3;
  if ([(EQKitEnvironment *)self usesLegacySTIXFonts])
  {
    v5 = +[EQKitEnvironment legacySTIXFontNames];
    v6 = [v5 containsObject:v4];
  }

  else
  {
    v5 = [(EQKitEnvironment *)self mathFontName];
    v6 = [v5 isEqualToString:v4];
  }

  v7 = v6;

  return v7;
}

- (BOOL)fontsLoadedCorrectly
{
  v2 = *(*EQKit::Font::Manager::fontCollection(self->_fontManager) + 32);

  return v2();
}

- (__CTFont)defaultFontOfSize:(double)a3
{
  v6 = 0;
  v7 = 1;
  v8 = 0;
  v9 = 3;
  v10 = a3;
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
  v2 = [(EQKitEnvironment *)self i_fontsDictionary];
  v3 = objc_opt_class();
  v4 = [v2 objectForKeyedSubscript:@"mathFontName"];
  v5 = EQKitUtilDynamicCast(v3, v4);

  return v5;
}

- (BOOL)i_requiresLegacySTIXFonts
{
  v2 = [(EQKitEnvironment *)self i_fontsDictionary];
  v3 = objc_opt_class();
  v4 = [v2 objectForKeyedSubscript:@"requiresLegacySTIXFonts"];
  v5 = EQKitUtilDynamicCast(v3, v4);

  if (v5)
  {
    v6 = [v5 BOOLValue];
  }

  else
  {
    v6 = 1;
  }

  return v6;
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