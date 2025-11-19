@interface GKInternalRepresentation
+ (id)codedPropertyKeys;
+ (id)internalRepresentation;
+ (id)secureCodedJsonTypes;
- (GKInternalRepresentation)initWithCoder:(id)a3;
- (id)_gkDescriptionWithChildren:(int64_t)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (void)encodeWithCoder:(id)a3;
- (void)mergePropertiesFrom:(id)a3;
@end

@implementation GKInternalRepresentation

+ (id)internalRepresentation
{
  v2 = objc_alloc_init(a1);

  return v2;
}

+ (id)secureCodedJsonTypes
{
  if (secureCodedJsonTypes_onceToken != -1)
  {
    +[GKInternalRepresentation secureCodedJsonTypes];
  }

  v3 = secureCodedJsonTypes_result;

  return v3;
}

void __48__GKInternalRepresentation_secureCodedJsonTypes__block_invoke()
{
  v10 = *MEMORY[0x277D85DE8];
  v0 = MEMORY[0x277CBEB98];
  v5 = objc_opt_class();
  v6 = objc_opt_class();
  v7 = objc_opt_class();
  v8 = objc_opt_class();
  v9 = objc_opt_class();
  v1 = [MEMORY[0x277CBEA60] arrayWithObjects:&v5 count:5];
  v2 = [v0 setWithArray:{v1, v5, v6, v7, v8}];
  v3 = secureCodedJsonTypes_result;
  secureCodedJsonTypes_result = v2;

  v4 = *MEMORY[0x277D85DE8];
}

- (GKInternalRepresentation)initWithCoder:(id)a3
{
  v23 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v21.receiver = self;
  v21.super_class = GKInternalRepresentation;
  v15 = [(GKInternalRepresentation *)&v21 init];
  if (v15)
  {
    v5 = [objc_opt_class() secureCodedPropertyKeys];
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    obj = [v5 allKeys];
    v6 = [obj countByEnumeratingWithState:&v17 objects:v22 count:16];
    if (!v6)
    {
      goto LABEL_16;
    }

    v7 = v6;
    v8 = *v18;
    while (1)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v18 != v8)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v17 + 1) + 8 * i);
        v11 = [v5 objectForKey:{v10, v15}];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [v4 decodeObjectOfClasses:v11 forKey:v10];
        }

        else
        {
          [v4 decodeObjectOfClass:v11 forKey:v10];
        }
        v12 = ;
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!v12)
          {
            goto LABEL_14;
          }

          [(GKInternalRepresentation *)v15 setValue:v12 forKey:v10];
        }

LABEL_14:
      }

      v7 = [obj countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (!v7)
      {
LABEL_16:

        break;
      }
    }
  }

  v13 = *MEMORY[0x277D85DE8];
  return v15;
}

- (void)encodeWithCoder:(id)a3
{
  v18 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v5 = [objc_opt_class() codedPropertyKeys];
  v6 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v14;
    do
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v14 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v13 + 1) + 8 * i);
        v11 = [(GKInternalRepresentation *)self valueForKey:v10];
        if (v11)
        {
          [v4 encodeObject:v11 forKey:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v13 objects:v17 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v4 = objc_alloc_init(objc_opt_class());
  if (v4)
  {
    v16 = 0u;
    v17 = 0u;
    v14 = 0u;
    v15 = 0u;
    v5 = [objc_opt_class() codedPropertyKeys];
    v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
    if (!v6)
    {
      goto LABEL_13;
    }

    v7 = v6;
    v8 = *v15;
    while (1)
    {
      for (i = 0; i != v7; ++i)
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(v5);
        }

        v10 = *(*(&v14 + 1) + 8 * i);
        v11 = [(GKInternalRepresentation *)self valueForKey:v10];
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          if (!v11)
          {
            continue;
          }

          [v4 setValue:v11 forKey:v10];
        }
      }

      v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
      if (!v7)
      {
LABEL_13:

        break;
      }
    }
  }

  v12 = *MEMORY[0x277D85DE8];
  return v4;
}

+ (id)codedPropertyKeys
{
  v2 = [a1 secureCodedPropertyKeys];
  v3 = [v2 allKeys];

  return v3;
}

- (id)_gkDescriptionWithChildren:(int64_t)a3
{
  v83 = *MEMORY[0x277D85DE8];
  v4 = _gkTabStringForTabLevel(a3);
  v5 = [MEMORY[0x277CCAB68] string];
  v6 = objc_opt_class();
  v7 = NSStringFromClass(v6);
  v67 = v4;
  v56 = v4;
  v8 = self;
  [v5 appendFormat:@"%@<%@ %p> {\n", v56, v7, self];

  v62 = [(GKInternalRepresentation *)self descriptionSubstitutionMap];
  v59 = [MEMORY[0x277CBEB18] array];
  v9 = [objc_opt_class() codedPropertyKeys];
  v10 = [v9 sortedArrayUsingComparator:&__block_literal_global_11];

  v78 = 0u;
  v79 = 0u;
  v76 = 0u;
  v77 = 0u;
  v11 = v10;
  v12 = [v11 countByEnumeratingWithState:&v76 objects:v82 count:16];
  v58 = v11;
  if (v12)
  {
    v13 = v12;
    v14 = *v77;
    v60 = *v77;
    v57 = v8;
    do
    {
      v15 = 0;
      v63 = v13;
      do
      {
        if (*v77 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v76 + 1) + 8 * v15);
        v17 = [(GKInternalRepresentation *)v8 valueForKey:v16];
        if (v17)
        {
          v18 = v17;
          v19 = [v62 objectForKeyedSubscript:v16];
          objc_opt_class();
          v64 = v15;
          if (objc_opt_isKindOfClass())
          {
            v61 = v19;
            v20 = v19;
            [v20 count];
            if ([v20 count] == 1)
            {
              [v20 objectAtIndexedSubscript:0];
              v22 = v21 = v18;
              v23 = [v21 valueForKeyPath:v22];

              v24 = [v23 _gkDescriptionWithChildren:a3 + 1];
              v25 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
              v26 = [v24 stringByTrimmingCharactersInSet:v25];

              v27 = [v20 objectAtIndexedSubscript:0];
              [v5 appendFormat:@"%@    %@.%@ : %@", v67, v16, v27, v26];

              v18 = v23;
              v13 = v63;
              v19 = v61;
            }

            else
            {
              [v5 appendFormat:@"    %@%@ : <%@:%p> {\n", v67, v16, objc_opt_class(), v18];
              v74 = 0u;
              v75 = 0u;
              v72 = 0u;
              v73 = 0u;
              v20 = v20;
              v31 = [v20 countByEnumeratingWithState:&v72 objects:v81 count:16];
              if (v31)
              {
                v32 = v31;
                v33 = *v73;
                obj = v20;
                do
                {
                  for (i = 0; i != v32; ++i)
                  {
                    v35 = v5;
                    if (*v73 != v33)
                    {
                      objc_enumerationMutation(obj);
                    }

                    v36 = *(*(&v72 + 1) + 8 * i);
                    [v18 valueForKeyPath:v36];
                    v38 = v37 = v18;
                    v39 = [v38 _gkDescriptionWithChildren:a3 + 2];
                    v40 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
                    v41 = [v39 stringByTrimmingCharactersInSet:v40];

                    v5 = v35;
                    [v35 appendFormat:@"%@        %@ : %@", v67, v36, v41];

                    v18 = v37;
                  }

                  v20 = obj;
                  v32 = [obj countByEnumeratingWithState:&v72 objects:v81 count:16];
                }

                while (v32);
              }

              [v5 appendFormat:@"    %@}\n", v67];
              v8 = v57;
              v11 = v58;
              v13 = v63;
              v14 = v60;
              v19 = v61;
            }
          }

          else
          {
            if (v19)
            {
              v28 = [v18 valueForKeyPath:v19];

              v29 = [v28 _gkDescriptionWithChildren:a3 + 1];
              v30 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
              v20 = [v29 stringByTrimmingCharactersInSet:v30];

              [v5 appendFormat:@"%@    %@.%@ : %@", v67, v16, v19, v20];
              v18 = v28;
            }

            else
            {
              v42 = [v18 _gkDescriptionWithChildren:a3 + 1];
              v43 = [MEMORY[0x277CCA900] whitespaceCharacterSet];
              v20 = [v42 stringByTrimmingCharactersInSet:v43];

              [v5 appendFormat:@"%@    %@ : %@", v67, v16, v20];
            }

            v14 = v60;
            v13 = v63;
          }

          v15 = v64;
        }

        else
        {
          [v59 addObject:v16];
        }

        ++v15;
      }

      while (v15 != v13);
      v13 = [v11 countByEnumeratingWithState:&v76 objects:v82 count:16];
    }

    while (v13);
  }

  v44 = v59;
  if ([v59 count])
  {
    [v5 appendFormat:@"%@    ", v67];
    v70 = 0u;
    v71 = 0u;
    v68 = 0u;
    v69 = 0u;
    v45 = v59;
    v46 = [v45 countByEnumeratingWithState:&v68 objects:v80 count:16];
    if (v46)
    {
      v47 = v46;
      v48 = 0;
      v49 = *v69;
      do
      {
        v50 = 0;
        v51 = v48;
        do
        {
          if (*v69 != v49)
          {
            objc_enumerationMutation(v45);
          }

          v52 = *(*(&v68 + 1) + 8 * v50);
          if (v51 <= 0)
          {
            v53 = @"%@";
          }

          else
          {
            v53 = @", %@";
          }

          [v5 appendFormat:v53, *(*(&v68 + 1) + 8 * v50)];
          ++v51;
          ++v50;
        }

        while (v47 != v50);
        v48 += v47;
        v47 = [v45 countByEnumeratingWithState:&v68 objects:v80 count:16];
      }

      while (v47);
    }

    [v5 appendString:@" : (null)\n"];
    v11 = v58;
    v44 = v59;
  }

  [v5 appendFormat:@"%@}\n", v67];

  v54 = *MEMORY[0x277D85DE8];

  return v5;
}

- (void)mergePropertiesFrom:(id)a3
{
  v24 = *MEMORY[0x277D85DE8];
  v4 = a3;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    v5 = MEMORY[0x277CCACA8];
    v6 = objc_opt_class();
    v7 = [v5 stringWithFormat:@"%@ is not a %@", v6, objc_opt_class()];
    v8 = [MEMORY[0x277CCACA8] stringWithUTF8String:"/Library/Caches/com.apple.xbs/Sources/GameCenter/Frameworks/GameCenterFoundation/GKInternalRepresentation.m"];
    v9 = [v8 lastPathComponent];
    v10 = [v5 stringWithFormat:@"%@ ([self isKindOfClass:[other class]])\n[%s (%s:%d)]", v7, "-[GKInternalRepresentation mergePropertiesFrom:]", objc_msgSend(v9, "UTF8String"), 191];

    [MEMORY[0x277CBEAD8] raise:@"GameKit Exception" format:{@"%@", v10}];
  }

  v11 = [objc_opt_class() codedPropertyKeys];
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v12 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
  if (v12)
  {
    v13 = v12;
    v14 = *v20;
    do
    {
      for (i = 0; i != v13; ++i)
      {
        if (*v20 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v19 + 1) + 8 * i);
        v17 = [v4 valueForKey:v16];
        if (v17)
        {
          [(GKInternalRepresentation *)self setValue:v17 forKey:v16];
        }
      }

      v13 = [v11 countByEnumeratingWithState:&v19 objects:v23 count:16];
    }

    while (v13);
  }

  v18 = *MEMORY[0x277D85DE8];
}

@end