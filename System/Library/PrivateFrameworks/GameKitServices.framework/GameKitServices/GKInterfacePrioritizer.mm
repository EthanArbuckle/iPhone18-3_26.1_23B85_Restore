@interface GKInterfacePrioritizer
+ (id)bsdNameToInterfaceTypeMap;
+ (id)prioritizeLocalInterfaces:(id)interfaces;
+ (void)initialize;
@end

@implementation GKInterfacePrioritizer

+ (void)initialize
{
  v15 = *MEMORY[0x277D85DE8];
  v2 = objc_alloc(MEMORY[0x277CBEB38]);
  gkInterfacePrioritizerTypeToPriorityMap = [v2 initWithCapacity:gkInterfaceTypesCount];
  [gkInterfacePrioritizerTypeToPriorityMap setObject:&unk_28619C050 forKeyedSubscript:*MEMORY[0x277CE16D0]];
  [gkInterfacePrioritizerTypeToPriorityMap setObject:&unk_28619C068 forKeyedSubscript:*MEMORY[0x277CE16D8]];
  [gkInterfacePrioritizerTypeToPriorityMap setObject:&unk_28619C080 forKeyedSubscript:*MEMORY[0x277CE16C8]];
  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v3 = VRTraceErrorLogLevelToCSTR();
    v4 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if (gkInterfacePrioritizerTypeToPriorityMap)
      {
        v5 = [objc_msgSend(gkInterfacePrioritizerTypeToPriorityMap "description")];
      }

      else
      {
        v5 = "<nil>";
      }

      v7 = 136315906;
      v8 = v3;
      v9 = 2080;
      v10 = "+[GKInterfacePrioritizer initialize]";
      v11 = 1024;
      v12 = 91;
      v13 = 2080;
      v14 = v5;
      _os_log_impl(&dword_24E50C000, v4, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d interfaceType2PriorityMap: %s", &v7, 0x26u);
    }
  }

  gkInterfaceTypesCount = [gkInterfacePrioritizerTypeToPriorityMap count];
  v6 = *MEMORY[0x277D85DE8];
}

+ (id)bsdNameToInterfaceTypeMap
{
  v42 = *MEMORY[0x277D85DE8];
  v2 = SCNetworkInterfaceCopyAll();
  v3 = [MEMORY[0x277CBEB38] dictionaryWithCapacity:{-[__CFArray count](v2, "count")}];
  v27 = 0u;
  v28 = 0u;
  v29 = 0u;
  v30 = 0u;
  v4 = [(__CFArray *)v2 countByEnumeratingWithState:&v27 objects:v41 count:16];
  if (v4)
  {
    v6 = v4;
    v7 = *v28;
    v8 = *MEMORY[0x277CE16D0];
    v26 = *MEMORY[0x277CE16C8];
    *&v5 = 136316162;
    v25 = v5;
    do
    {
      v9 = 0;
      do
      {
        if (*v28 != v7)
        {
          objc_enumerationMutation(v2);
        }

        v10 = *(*(&v27 + 1) + 8 * v9);
        InterfaceType = SCNetworkInterfaceGetInterfaceType(v10);
        BSDName = SCNetworkInterfaceGetBSDName(v10);
        v13 = BSDName;
        if (InterfaceType)
        {
          v14 = BSDName == 0;
        }

        else
        {
          v14 = 1;
        }

        if (v14)
        {
          if (VRTraceGetErrorLogLevelForModule() >= 5)
          {
            v15 = VRTraceErrorLogLevelToCSTR();
            v16 = *MEMORY[0x277CE5818];
            if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
            {
              if (InterfaceType)
              {
                v17 = [-[__CFString description](InterfaceType "description")];
                if (v13)
                {
                  goto LABEL_15;
                }

LABEL_25:
                v18 = "<nil>";
              }

              else
              {
                v17 = "<nil>";
                if (!v13)
                {
                  goto LABEL_25;
                }

LABEL_15:
                v18 = [-[__CFString description](v13 description];
              }

              *buf = v25;
              v32 = v15;
              v33 = 2080;
              v34 = "+[GKInterfacePrioritizer bsdNameToInterfaceTypeMap]";
              v35 = 1024;
              v36 = 107;
              v37 = 2080;
              v38 = v17;
              v39 = 2080;
              v40 = v18;
              _os_log_impl(&dword_24E50C000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d invalid type [%s] or bsd name [%s]", buf, 0x30u);
            }
          }
        }

        else
        {
          if ([(__CFString *)InterfaceType isEqualToString:v8]&& (_SCNetworkInterfaceIsBluetoothPAN() || _SCNetworkInterfaceIsBluetoothPAN_NAP() || _SCNetworkInterfaceIsBluetoothP2P()))
          {
            InterfaceType = v26;
          }

          [v3 setObject:InterfaceType forKeyedSubscript:{v13, v25}];
        }

        ++v9;
      }

      while (v6 != v9);
      v19 = [(__CFArray *)v2 countByEnumeratingWithState:&v27 objects:v41 count:16];
      v6 = v19;
    }

    while (v19);
  }

  if (VRTraceGetErrorLogLevelForModule() >= 7)
  {
    v20 = VRTraceErrorLogLevelToCSTR();
    v21 = *MEMORY[0x277CE5818];
    if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
    {
      if (v3)
      {
        v22 = [objc_msgSend(v3 "description")];
      }

      else
      {
        v22 = "<nil>";
      }

      *buf = 136315906;
      v32 = v20;
      v33 = 2080;
      v34 = "+[GKInterfacePrioritizer bsdNameToInterfaceTypeMap]";
      v35 = 1024;
      v36 = 123;
      v37 = 2080;
      v38 = v22;
      _os_log_impl(&dword_24E50C000, v21, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d bsdName2interfaceTypeMap: %s", buf, 0x26u);
    }
  }

  v23 = *MEMORY[0x277D85DE8];
  return v3;
}

+ (id)prioritizeLocalInterfaces:(id)interfaces
{
  v42 = *MEMORY[0x277D85DE8];
  if ([interfaces count])
  {
    v4 = +[GKInterfacePrioritizer bsdNameToInterfaceTypeMap];
    v5 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(interfaces, "count")}];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v6 = [interfaces countByEnumeratingWithState:&v29 objects:v41 count:16];
    if (v6)
    {
      v7 = v6;
      v8 = *v30;
      do
      {
        for (i = 0; i != v7; ++i)
        {
          if (*v30 != v8)
          {
            objc_enumerationMutation(interfaces);
          }

          v10 = [GKInterface interfaceWithInterfaceIndex:*(*(&v29 + 1) + 8 * i)];
          v11 = [v4 objectForKeyedSubscript:{-[GKInterface bsdName](v10, "bsdName")}];
          if (v11)
          {
            v12 = v11;
          }

          else
          {
            v12 = @"GKInterfaceTypeUnknown";
          }

          [(GKInterface *)v10 setType:v12];
          v13 = [gkInterfacePrioritizerTypeToPriorityMap objectForKeyedSubscript:{-[GKInterface type](v10, "type")}];
          if (v13)
          {
            unsignedIntValue = [v13 unsignedIntValue];
          }

          else
          {
            unsignedIntValue = gkInterfaceTypesCount;
          }

          [(GKInterface *)v10 setPriority:unsignedIntValue];
          [v5 addObject:v10];
        }

        v7 = [interfaces countByEnumeratingWithState:&v29 objects:v41 count:16];
      }

      while (v7);
    }

    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v15 = VRTraceErrorLogLevelToCSTR();
      v16 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if (v5)
        {
          v17 = [objc_msgSend(v5 "description")];
        }

        else
        {
          v17 = "<nil>";
        }

        *buf = 136315906;
        v34 = v15;
        v35 = 2080;
        v36 = "+[GKInterfacePrioritizer prioritizeLocalInterfaces:]";
        v37 = 1024;
        v38 = 150;
        v39 = 2080;
        v40 = v17;
        _os_log_impl(&dword_24E50C000, v16, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d before sorting %s", buf, 0x26u);
      }
    }

    [v5 sortUsingComparator:&__block_literal_global_2];
    if (VRTraceGetErrorLogLevelForModule() >= 7)
    {
      v21 = VRTraceErrorLogLevelToCSTR();
      v22 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if (v5)
        {
          v23 = [objc_msgSend(v5 "description")];
        }

        else
        {
          v23 = "<nil>";
        }

        *buf = 136315906;
        v34 = v21;
        v35 = 2080;
        v36 = "+[GKInterfacePrioritizer prioritizeLocalInterfaces:]";
        v37 = 1024;
        v38 = 163;
        v39 = 2080;
        v40 = v23;
        _os_log_impl(&dword_24E50C000, v22, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d after sorting %s", buf, 0x26u);
      }
    }

    if ([v5 count])
    {
      v24 = 0;
      do
      {
        [v5 setObject:objc_msgSend(objc_msgSend(v5 atIndexedSubscript:{"objectAtIndexedSubscript:", v24), "index"), v24}];
        ++v24;
      }

      while (v24 < [v5 count]);
    }

    if (VRTraceGetErrorLogLevelForModule() > 6)
    {
      v25 = VRTraceErrorLogLevelToCSTR();
      v26 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_DEFAULT))
      {
        if (v5)
        {
          v27 = [objc_msgSend(v5 "description")];
        }

        else
        {
          v27 = "<nil>";
        }

        *buf = 136315906;
        v34 = v25;
        v35 = 2080;
        v36 = "+[GKInterfacePrioritizer prioritizeLocalInterfaces:]";
        v37 = 1024;
        v38 = 170;
        v39 = 2080;
        v40 = v27;
        _os_log_impl(&dword_24E50C000, v26, OS_LOG_TYPE_DEFAULT, " [%s] %s:%d ordered interface indices %s", buf, 0x26u);
      }
    }

    result = v5;
  }

  else
  {
    if (VRTraceGetErrorLogLevelForModule() >= 3)
    {
      v18 = VRTraceErrorLogLevelToCSTR();
      v19 = *MEMORY[0x277CE5818];
      if (os_log_type_enabled(*MEMORY[0x277CE5818], OS_LOG_TYPE_ERROR))
      {
        [(GKInterfacePrioritizer *)v18 prioritizeLocalInterfaces:v19];
      }
    }

    result = 0;
  }

  v28 = *MEMORY[0x277D85DE8];
  return result;
}

uint64_t __52__GKInterfacePrioritizer_prioritizeLocalInterfaces___block_invoke(uint64_t a1, void *a2, void *a3)
{
  v5 = [a2 priority];
  if (v5 < [a3 priority])
  {
    return -1;
  }

  v7 = [a2 priority];
  return v7 > [a3 priority];
}

+ (void)prioritizeLocalInterfaces:(uint64_t)a1 .cold.1(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x277D85DE8];
  v3 = 136315650;
  v4 = a1;
  v5 = 2080;
  v6 = "+[GKInterfacePrioritizer prioritizeLocalInterfaces:]";
  v7 = 1024;
  v8 = 131;
  _os_log_error_impl(&dword_24E50C000, a2, OS_LOG_TYPE_ERROR, " [%s] %s:%d no interfaces at input", &v3, 0x1Cu);
  v2 = *MEMORY[0x277D85DE8];
}

@end