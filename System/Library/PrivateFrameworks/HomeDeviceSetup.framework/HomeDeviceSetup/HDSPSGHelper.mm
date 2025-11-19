@interface HDSPSGHelper
- (HDSPSGHelper)initWithHome:(id)a3;
- (id)allPSGsInRoom:(id)a3;
- (id)fetchPSG:(id)a3;
- (id)roomForStereoPair:(id)a3;
- (id)roomsForPSG:(id)a3;
@end

@implementation HDSPSGHelper

- (HDSPSGHelper)initWithHome:(id)a3
{
  v80 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v76.receiver = self;
  v76.super_class = HDSPSGHelper;
  v6 = [(HDSPSGHelper *)&v76 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_currentHome, a3);
    v8 = [(HMHome *)v7->_currentHome accessories];
    v9 = [v8 copy];
    allHomePods = v7->_allHomePods;
    p_allHomePods = &v7->_allHomePods;
    v7->_allHomePods = v9;

    v11 = [(HMHome *)v7->_currentHome mediaSystems];
    v12 = [v11 copy];
    allStereoPairs = v7->_allStereoPairs;
    p_allStereoPairs = &v7->_allStereoPairs;
    v7->_allStereoPairs = v12;

    if (gLogCategory_HDSPSGHelper <= 30)
    {
      if (gLogCategory_HDSPSGHelper != -1 || _LogCategory_Initialize())
      {
        [HDSPSGHelper initWithHome:];
      }

      if (gLogCategory_HDSPSGHelper <= 30)
      {
        if (gLogCategory_HDSPSGHelper != -1 || _LogCategory_Initialize())
        {
          [HDSPSGHelper initWithHome:v7];
        }

        if (gLogCategory_HDSPSGHelper <= 30)
        {
          if (gLogCategory_HDSPSGHelper != -1 || _LogCategory_Initialize())
          {
            [HDSPSGHelper initWithHome:?];
          }

          if (gLogCategory_HDSPSGHelper <= 30 && (gLogCategory_HDSPSGHelper != -1 || _LogCategory_Initialize()))
          {
            [HDSPSGHelper initWithHome:?];
          }
        }
      }
    }

    v53 = v5;
    v14 = objc_opt_new();
    psgStereoPairMap = v7->_psgStereoPairMap;
    p_psgStereoPairMap = &v7->_psgStereoPairMap;
    v7->_psgStereoPairMap = v14;

    v16 = objc_opt_new();
    v52 = v7;
    psgHomePodMap = v7->_psgHomePodMap;
    p_psgHomePodMap = &v7->_psgHomePodMap;
    *p_psgHomePodMap = v16;

    v74 = 0u;
    v75 = 0u;
    v72 = 0u;
    v73 = 0u;
    v59 = p_psgHomePodMap;
    obj = *(p_psgHomePodMap - 3);
    v60 = [obj countByEnumeratingWithState:&v72 objects:v79 count:16];
    if (v60)
    {
      v19 = 0x277CBE000uLL;
      v55 = *v73;
      do
      {
        v20 = 0;
        do
        {
          if (*v73 != v55)
          {
            objc_enumerationMutation(obj);
          }

          v61 = v20;
          v21 = *(*(&v72 + 1) + 8 * v20);
          v63 = [v21 identifier];
          v22 = [v21 destinationIdentifiers];
          v23 = *(v19 + 2840);
          v62 = objc_opt_new();
          v70 = 0u;
          v71 = 0u;
          v68 = 0u;
          v69 = 0u;
          v24 = *p_allHomePods;
          v25 = [v24 countByEnumeratingWithState:&v68 objects:v78 count:16];
          if (v25)
          {
            v26 = v25;
            v27 = *v69;
            do
            {
              for (i = 0; i != v26; ++i)
              {
                if (*v69 != v27)
                {
                  objc_enumerationMutation(v24);
                }

                v29 = *(*(&v68 + 1) + 8 * i);
                v30 = [v29 audioDestinationIdentifier];
                if (v30)
                {
                  v31 = v30;
                  v32 = [v29 audioDestinationIdentifier];
                  v33 = [v22 containsObject:v32];

                  if (v33)
                  {
                    if (gLogCategory_HDSPSGHelper <= 30 && (gLogCategory_HDSPSGHelper != -1 || _LogCategory_Initialize()))
                    {
                      LogPrintF();
                      [v62 addObject:{v29, v63, v29}];
                    }

                    else
                    {
                      [v62 addObject:{v29, v50, v51}];
                    }
                  }
                }

                if (gLogCategory_HDSPSGHelper <= 30 && (gLogCategory_HDSPSGHelper != -1 || _LogCategory_Initialize()))
                {
                  v50 = v63;
                  v51 = v62;
                  LogPrintF();
                }
              }

              v26 = [v24 countByEnumeratingWithState:&v68 objects:v78 count:16];
            }

            while (v26);
          }

          v34 = [v62 copy];
          [*v59 setObject:v34 forKeyedSubscript:v63];

          v35 = *(v19 + 2840);
          v36 = objc_opt_new();
          v66 = 0u;
          v67 = 0u;
          v64 = 0u;
          v65 = 0u;
          v37 = *p_allStereoPairs;
          v38 = [v37 countByEnumeratingWithState:&v64 objects:v77 count:16];
          if (v38)
          {
            v39 = v38;
            v40 = *v65;
            do
            {
              for (j = 0; j != v39; ++j)
              {
                if (*v65 != v40)
                {
                  objc_enumerationMutation(v37);
                }

                v42 = *(*(&v64 + 1) + 8 * j);
                v43 = [v42 audioDestinationIdentifier];
                if (v43)
                {
                  v44 = v43;
                  v45 = [v42 audioDestinationIdentifier];
                  v46 = [v22 containsObject:v45];

                  if (v46)
                  {
                    if (gLogCategory_HDSPSGHelper <= 30 && (gLogCategory_HDSPSGHelper != -1 || _LogCategory_Initialize()))
                    {
                      LogPrintF();
                      [v36 addObject:{v42, v63, v42}];
                    }

                    else
                    {
                      [v36 addObject:{v42, v50, v51}];
                    }
                  }
                }

                if (gLogCategory_HDSPSGHelper <= 30 && (gLogCategory_HDSPSGHelper != -1 || _LogCategory_Initialize()))
                {
                  v50 = v63;
                  v51 = v36;
                  LogPrintF();
                }
              }

              v39 = [v37 countByEnumeratingWithState:&v64 objects:v77 count:16];
            }

            while (v39);
          }

          v47 = [v36 copy];
          [*p_psgStereoPairMap setObject:v47 forKeyedSubscript:v63];

          v20 = v61 + 1;
          v19 = 0x277CBE000;
        }

        while (v61 + 1 != v60);
        v60 = [obj countByEnumeratingWithState:&v72 objects:v79 count:16];
      }

      while (v60);
    }

    v7 = v52;
    v5 = v53;
    if (gLogCategory_HDSPSGHelper <= 30)
    {
      if (gLogCategory_HDSPSGHelper != -1 || _LogCategory_Initialize())
      {
        [HDSPSGHelper initWithHome:v59];
      }

      if (gLogCategory_HDSPSGHelper <= 30 && (gLogCategory_HDSPSGHelper != -1 || _LogCategory_Initialize()))
      {
        [HDSPSGHelper initWithHome:?];
      }
    }
  }

  v48 = *MEMORY[0x277D85DE8];
  return v7;
}

- (id)allPSGsInRoom:(id)a3
{
  v57 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = v5;
  if (v4)
  {
    v34 = v4;
    v7 = [v4 uniqueIdentifier];
    v50 = 0u;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    obj = [(NSMutableDictionary *)self->_psgHomePodMap allKeys];
    v38 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
    if (v38)
    {
      v37 = *v51;
      v35 = v6;
      do
      {
        for (i = 0; i != v38; i = v27 + 1)
        {
          if (*v51 != v37)
          {
            objc_enumerationMutation(obj);
          }

          v40 = i;
          v9 = *(*(&v50 + 1) + 8 * i);
          v10 = [(NSMutableDictionary *)self->_psgHomePodMap objectForKeyedSubscript:v9];
          v39 = v9;
          v41 = [(NSMutableDictionary *)self->_psgStereoPairMap objectForKeyedSubscript:v9];
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          v49 = 0u;
          v11 = v10;
          v12 = [v11 countByEnumeratingWithState:&v46 objects:v55 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v47;
            while (2)
            {
              for (j = 0; j != v13; ++j)
              {
                if (*v47 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = [*(*(&v46 + 1) + 8 * j) room];
                v17 = [v16 uniqueIdentifier];
                v18 = [v7 hmf_isEqualToUUID:v17];

                if (v18)
                {
                  v24 = [(HDSPSGHelper *)self fetchPSG:v39];
                  if (gLogCategory_HDSPSGHelper <= 30 && (gLogCategory_HDSPSGHelper != -1 || _LogCategory_Initialize()))
                  {
                    v32 = v7;
                    v33 = v24;
                    LogPrintF();
                  }

                  [v6 addObject:{v24, v32, v33}];
                  v19 = v11;
LABEL_35:
                  v27 = v40;

                  goto LABEL_36;
                }
              }

              v13 = [v11 countByEnumeratingWithState:&v46 objects:v55 count:16];
              if (v13)
              {
                continue;
              }

              break;
            }
          }

          v44 = 0u;
          v45 = 0u;
          v42 = 0u;
          v43 = 0u;
          v19 = v41;
          v20 = [v19 countByEnumeratingWithState:&v42 objects:v54 count:16];
          if (v20)
          {
            v21 = v20;
            v22 = *v43;
            while (2)
            {
              for (k = 0; k != v21; ++k)
              {
                if (*v43 != v22)
                {
                  objc_enumerationMutation(v19);
                }

                v24 = [(HDSPSGHelper *)self roomForStereoPair:*(*(&v42 + 1) + 8 * k)];
                v25 = [v24 uniqueIdentifier];
                v26 = [v7 hmf_isEqualToUUID:v25];

                if (v26)
                {
                  v28 = [(HDSPSGHelper *)self fetchPSG:v39];
                  if (gLogCategory_HDSPSGHelper <= 30 && (gLogCategory_HDSPSGHelper != -1 || _LogCategory_Initialize()))
                  {
                    v32 = v7;
                    v33 = v28;
                    LogPrintF();
                  }

                  v6 = v35;
                  [v35 addObject:{v28, v32, v33}];

                  goto LABEL_35;
                }
              }

              v21 = [v19 countByEnumeratingWithState:&v42 objects:v54 count:16];
              if (v21)
              {
                continue;
              }

              break;
            }

            v6 = v35;
          }

          v27 = v40;
LABEL_36:
        }

        v38 = [obj countByEnumeratingWithState:&v50 objects:v56 count:16];
      }

      while (v38);
    }

    if (gLogCategory_HDSPSGHelper <= 30 && (gLogCategory_HDSPSGHelper != -1 || _LogCategory_Initialize()))
    {
      v32 = v34;
      v33 = v6;
      LogPrintF();
    }

    v29 = [v6 copy];

    v4 = v34;
  }

  else
  {
    v29 = v5;
  }

  v30 = *MEMORY[0x277D85DE8];

  return v29;
}

- (id)roomsForPSG:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = objc_opt_new();
  v6 = v5;
  if (v4)
  {
    v30 = v4;
    v7 = [v4 identifier];
    v8 = [(NSMutableDictionary *)self->_psgHomePodMap objectForKeyedSubscript:v7];
    v29 = v7;
    v9 = [(NSMutableDictionary *)self->_psgStereoPairMap objectForKeyedSubscript:v7];
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v35 objects:v40 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v36;
      do
      {
        v14 = 0;
        do
        {
          if (*v36 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v35 + 1) + 8 * v14);
          if (gLogCategory_HDSPSGHelper <= 30 && (gLogCategory_HDSPSGHelper != -1 || _LogCategory_Initialize()))
          {
            [HDSPSGHelper roomsForPSG:v15];
          }

          v16 = [v15 room];
          [v6 addObject:v16];

          ++v14;
        }

        while (v12 != v14);
        v17 = [v10 countByEnumeratingWithState:&v35 objects:v40 count:16];
        v12 = v17;
      }

      while (v17);
    }

    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    v32 = 0u;
    v18 = v9;
    v19 = [v18 countByEnumeratingWithState:&v31 objects:v39 count:16];
    if (v19)
    {
      v20 = v19;
      v21 = *v32;
      do
      {
        for (i = 0; i != v20; ++i)
        {
          if (*v32 != v21)
          {
            objc_enumerationMutation(v18);
          }

          v23 = [(HDSPSGHelper *)self roomForStereoPair:*(*(&v31 + 1) + 8 * i)];
          if (gLogCategory_HDSPSGHelper <= 30 && (gLogCategory_HDSPSGHelper != -1 || _LogCategory_Initialize()))
          {
            v27 = v30;
            v28 = v23;
            LogPrintF();
          }

          [v6 addObject:{v23, v27, v28}];
        }

        v20 = [v18 countByEnumeratingWithState:&v31 objects:v39 count:16];
      }

      while (v20);
    }

    v4 = v30;
    if (gLogCategory_HDSPSGHelper <= 30 && (gLogCategory_HDSPSGHelper != -1 || _LogCategory_Initialize()))
    {
      v27 = v30;
      v28 = v6;
      LogPrintF();
    }

    v24 = [v6 copy];
  }

  else
  {
    v24 = v5;
  }

  v25 = *MEMORY[0x277D85DE8];

  return v24;
}

- (id)roomForStereoPair:(id)a3
{
  v3 = [a3 components];
  v4 = [v3 firstObject];
  v5 = [v4 mediaProfile];
  v6 = [v5 accessory];
  v7 = [v6 room];

  return v7;
}

- (id)fetchPSG:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  if (gLogCategory_HDSPSGHelper <= 30 && (gLogCategory_HDSPSGHelper != -1 || _LogCategory_Initialize()))
  {
    v14 = v4;
    allPSGs = self->_allPSGs;
    LogPrintF();
  }

  v18 = 0u;
  v19 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = self->_allPSGs;
  v6 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
  if (v6)
  {
    v7 = *v17;
    while (2)
    {
      for (i = 0; i != v6; i = i + 1)
      {
        if (*v17 != v7)
        {
          objc_enumerationMutation(v5);
        }

        v9 = *(*(&v16 + 1) + 8 * i);
        v10 = [v9 identifier];
        v11 = [v4 hmf_isEqualToUUID:v10];

        if (v11)
        {
          v6 = [v9 copy];
          goto LABEL_15;
        }
      }

      v6 = [(NSArray *)v5 countByEnumeratingWithState:&v16 objects:v20 count:16];
      if (v6)
      {
        continue;
      }

      break;
    }
  }

LABEL_15:

  v12 = *MEMORY[0x277D85DE8];

  return v6;
}

- (void)roomsForPSG:(void *)a1 .cold.1(void *a1)
{
  v1 = [a1 room];
  LogPrintF();
}

@end