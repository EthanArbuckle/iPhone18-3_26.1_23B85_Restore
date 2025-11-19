@interface GKInterface
+ (id)bsdNameForIndex:(id)a3;
+ (id)interfaceWithInterfaceIndex:(id)a3;
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
  v4 = [(NSNumber *)[(GKInterface *)self index] intValue];
  if ([(GKInterface *)self bsdName])
  {
    v5 = [[(NSString *)[(GKInterface *)self bsdName] description] UTF8String];
  }

  else
  {
    v5 = "<nil>";
  }

  if ([(GKInterface *)self type])
  {
    v6 = [[(NSString *)[(GKInterface *)self type] description] UTF8String];
  }

  else
  {
    v6 = "<nil>";
  }

  return [v3 stringWithFormat:@"GKInterface [%p] index [%d] bsdName [%s] type [%s] priority [%d]", self, v4, v5, v6, -[GKInterface priority](self, "priority")];
}

+ (id)interfaceWithInterfaceIndex:(id)a3
{
  v4 = objc_alloc_init(GKInterface);
  [(GKInterface *)v4 setIndex:a3];
  [(GKInterface *)v4 setBsdName:[GKInterface bsdNameForIndex:a3]];

  return v4;
}

+ (id)bsdNameForIndex:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  if ([a3 intValue] < 1)
  {
    result = @"GKInterfaceBSDNameNone";
  }

  else
  {
    memset(v8, 170, sizeof(v8));
    if (if_indextoname([a3 intValue], v8))
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
          [(GKInterface *)v5 bsdNameForIndex:a3, v6];
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