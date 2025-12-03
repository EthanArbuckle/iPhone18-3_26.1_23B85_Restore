@interface GKInterface
+ (id)bsdNameForIndex:(id)index;
+ (id)interfaceWithInterfaceIndex:(id)index;
- (id)description;
- (void)dealloc;
@end

@implementation GKInterface

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = GKInterface;
  [(GKInterface *)&v3 dealloc];
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  intValue = [(NSNumber *)[(GKInterface *)self index] intValue];
  if ([(GKInterface *)self bsdName])
  {
    uTF8String = [[(NSString *)[(GKInterface *)self bsdName] description] UTF8String];
  }

  else
  {
    uTF8String = "<nil>";
  }

  if ([(GKInterface *)self type])
  {
    uTF8String2 = [[(NSString *)[(GKInterface *)self type] description] UTF8String];
  }

  else
  {
    uTF8String2 = "<nil>";
  }

  return [v3 stringWithFormat:@"GKInterface [%p] index [%d] bsdName [%s] type [%s] priority [%d]", self, intValue, uTF8String, uTF8String2, -[GKInterface priority](self, "priority")];
}

+ (id)interfaceWithInterfaceIndex:(id)index
{
  v4 = objc_alloc_init(GKInterface);
  [(GKInterface *)v4 setIndex:index];
  [(GKInterface *)v4 setBsdName:[GKInterface bsdNameForIndex:index]];

  return v4;
}

+ (id)bsdNameForIndex:(id)index
{
  v9 = *MEMORY[0x277D85DE8];
  if ([index intValue] < 1)
  {
    result = @"GKInterfaceBSDNameNone";
  }

  else
  {
    memset(v8, 170, sizeof(v8));
    if (if_indextoname([index intValue], v8))
    {
      result = [MEMORY[0x277CCACA8] stringWithUTF8String:v8];
    }

    else
    {
      if (VRTraceGetErrorLogLevelForModule() >= 3)
      {
        v5 = VRTraceErrorLogLevelToCSTR();
        v6 = *MEMORY[0x277CE5818];
        if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
        {
          [(GKInterface *)v5 bsdNameForIndex:index, v6];
        }
      }

      result = 0;
    }
  }

  v7 = *MEMORY[0x277D85DE8];
  return result;
}

+ (void)bsdNameForIndex:(NSObject *)a3 .cold.1(uint64_t a1, void *a2, NSObject *a3)
{
  v13 = *MEMORY[0x277D85DE8];
  v5 = 136315906;
  v6 = a1;
  v7 = 2080;
  v8 = "+[GKInterface bsdNameForIndex:]";
  v9 = 1024;
  v10 = 70;
  v11 = 1024;
  v12 = [a2 intValue];
  _os_log_error_impl(&dword_24E50C000, a3, OS_LOG_TYPE_ERROR, " [%s] %s:%d failed for interface index %d", &v5, 0x22u);
  v4 = *MEMORY[0x277D85DE8];
}

@end