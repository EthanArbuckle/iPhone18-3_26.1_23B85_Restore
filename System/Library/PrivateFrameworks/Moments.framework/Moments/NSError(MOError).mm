@interface NSError(MOError)
+ (id)errorUsingError:()MOError withUnderyingError:;
@end

@implementation NSError(MOError)

+ (id)errorUsingError:()MOError withUnderyingError:
{
  v5 = a3;
  v6 = a4;
  v7 = v6;
  if (v5)
  {
    if (v6)
    {
      userInfo = [v5 userInfo];
      v9 = MEMORY[0x277CBEB38];
      if (userInfo)
      {
        userInfo2 = [v5 userInfo];
        v11 = [v9 dictionaryWithDictionary:userInfo2];
      }

      else
      {
        v11 = objc_opt_new();
      }

      [v11 setObject:v7 forKeyedSubscript:*MEMORY[0x277CCA7E8]];
      userInfo3 = [v5 userInfo];
      v15 = *MEMORY[0x277CCA450];
      v16 = [userInfo3 objectForKeyedSubscript:*MEMORY[0x277CCA450]];
      if (v16)
      {
        v17 = v16;
        userInfo4 = [v7 userInfo];
        v19 = [userInfo4 objectForKeyedSubscript:v15];

        if (v19)
        {
          v20 = MEMORY[0x277CCACA8];
          userInfo5 = [v5 userInfo];
          v22 = [userInfo5 objectForKeyedSubscript:v15];
          userInfo6 = [v7 userInfo];
          v24 = [userInfo6 objectForKeyedSubscript:v15];
          v25 = [v20 stringWithFormat:@"%@ (due '%@')", v22, v24];
          [v11 setObject:v25 forKeyedSubscript:v15];

          goto LABEL_16;
        }
      }

      else
      {
      }

      userInfo7 = [v7 userInfo];
      v27 = [userInfo7 objectForKeyedSubscript:v15];

      if (!v27)
      {
LABEL_17:
        v29 = MEMORY[0x277CCA9B8];
        domain = [v5 domain];
        v13 = [v29 errorWithDomain:domain code:objc_msgSend(v5 userInfo:{"code"), v11}];

        goto LABEL_19;
      }

      v28 = MEMORY[0x277CCACA8];
      userInfo5 = [v7 userInfo];
      v22 = [userInfo5 objectForKeyedSubscript:v15];
      userInfo6 = [v28 stringWithFormat:@"due '%@'", v22];
      [v11 setObject:userInfo6 forKeyedSubscript:v15];
LABEL_16:

      goto LABEL_17;
    }

    v12 = v5;
LABEL_8:
    v13 = v12;
    goto LABEL_19;
  }

  if (v6)
  {
    v12 = v6;
    goto LABEL_8;
  }

  v13 = 0;
LABEL_19:

  return v13;
}

@end