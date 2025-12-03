@interface BRInterface
+ (id)interfaces;
- (BOOL)disableStates:(id)states clearAsset:(BOOL)asset error:(id *)error;
- (BOOL)enableStates:(id)states error:(id *)error;
- (BOOL)playState:(unint64_t)state forSpeed:(unint64_t)speed error:(id *)error;
- (BOOL)setConfigs:(id)configs withAssets:(id)assets forStates:(id)states error:(id *)error;
- (BOOL)setGlobalConfigs:(id)configs error:(id *)error;
- (BRInterface)init;
- (id)description;
- (id)propertyList;
- (void)dealloc;
- (void)init;
- (void)timestampWithLabel:(id)label;
@end

@implementation BRInterface

- (BRInterface)init
{
  v5.receiver = self;
  v5.super_class = BRInterface;
  v2 = [(BRInterface *)&v5 init];
  if (v2)
  {
    v2->_queue = dispatch_queue_create(0, 0);
    v3 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v2->_timestampDict = v3;
    if (!v3)
    {
      [(BRInterface *)v2 init];
      return 0;
    }
  }

  return v2;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BRInterface;
  [(BRInterface *)&v3 dealloc];
}

- (id)description
{
  v7.receiver = self;
  v7.super_class = BRInterface;
  v3 = [objc_alloc(MEMORY[0x277CCAB68]) initWithString:{-[BRInterface description](&v7, sel_description)}];
  isReady = [(BRInterface *)self isReady];
  v5 = "N";
  if (isReady)
  {
    v5 = "Y";
  }

  [v3 appendFormat:@"IsReady: %s;\n", v5];
  [v3 appendFormat:@"MaxSlots: %lu;\n", -[BRInterface maxAssetSlots](self, "maxAssetSlots")];
  [v3 appendFormat:@"UnusedSlots: %lu;\n", -[BRInterface unusedAssetSlots](self, "unusedAssetSlots")];
  [v3 appendFormat:@"RecentActionTimestamps: %@;\n", self->_timestampDict];
  return v3;
}

- (id)propertyList
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  v4 = MEMORY[0x277CCACA8];
  isReady = [(BRInterface *)self isReady];
  v6 = "N";
  if (isReady)
  {
    v6 = "Y";
  }

  [dictionary setObject:objc_msgSend(v4 forKey:{"stringWithFormat:", @"%s;", v6), @"IsReady"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInteger:", -[BRInterface maxAssetSlots](self, "maxAssetSlots")), @"MaxSlots"}];
  [dictionary setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInteger:", -[BRInterface unusedAssetSlots](self, "unusedAssetSlots")), @"UnusedSlots"}];
  [dictionary setObject:self->_timestampDict forKey:@"RecentActionTimestamps"];
  return dictionary;
}

+ (id)interfaces
{
  v2 = [MEMORY[0x277CBEB58] set];
  v3 = +[BRInterfaceLegacy interface];
  v4 = +[BRInterfaceKeyboard interface];
  v5 = +[BRInterfaceAOP interface];
  if (v5)
  {
    v6 = v5;
    [v3 setTapOnly:1];
    [v2 addObject:v6];
  }

  [v2 addObject:v3];
  [v2 addObject:v4];
  return v2;
}

- (BOOL)setGlobalConfigs:(id)configs error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  return 1;
}

- (BOOL)setConfigs:(id)configs withAssets:(id)assets forStates:(id)states error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  return 1;
}

- (BOOL)enableStates:(id)states error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  return 1;
}

- (BOOL)disableStates:(id)states clearAsset:(BOOL)asset error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  return 1;
}

- (BOOL)playState:(unint64_t)state forSpeed:(unint64_t)speed error:(id *)error
{
  if (error)
  {
    *error = 0;
  }

  return 1;
}

- (void)timestampWithLabel:(id)label
{
  if (label)
  {
    v5 = MEMORY[0x277CCABB0];
    [MEMORY[0x277CBEAA8] timeIntervalSinceReferenceDate];
    v6 = [v5 numberWithDouble:?];
    timestampDict = self->_timestampDict;

    [(NSMutableDictionary *)timestampDict setObject:v6 forKeyedSubscript:label];
  }
}

- (void)init
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = _BRLog_log_3;
  if (!_BRLog_log_3)
  {
    v2 = os_log_create("com.apple.ButtonResolver", "default");
    _BRLog_log_3 = v2;
  }

  if (os_log_type_enabled(v2, OS_LOG_TYPE_ERROR))
  {
    v4 = 136315138;
    v5 = "[BRInterface init]";
    _os_log_error_impl(&dword_242149000, v2, OS_LOG_TYPE_ERROR, "%s failed!", &v4, 0xCu);
  }

  v3 = *MEMORY[0x277D85DE8];
}

@end