@interface NSDictionary(MGRemoteQueryCoding)
- (id)rq_arrayOfDecodedClass:()MGRemoteQueryCoding forKey:;
- (id)rq_coded;
- (id)rq_decodedObjectOfClass:()MGRemoteQueryCoding forKey:;
- (id)rq_numberForKey:()MGRemoteQueryCoding;
- (id)rq_stringForKey:()MGRemoteQueryCoding;
@end

@implementation NSDictionary(MGRemoteQueryCoding)

- (id)rq_coded
{
  v19 = *MEMORY[0x277D85DE8];
  v2 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(a1, "count")}];
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v3 = a1;
  v4 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v15;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v15 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v14 + 1) + 8 * i);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) == 0)
        {
          v13 = [MEMORY[0x277CBEAD8] exceptionWithName:*MEMORY[0x277CBE660] reason:@"Key is not a string" userInfo:{0, v14}];
          objc_exception_throw(v13);
        }

        v9 = [v3 objectForKey:{v8, v14}];
        v10 = [v9 rq_coded];
        [v2 setObject:v10 forKey:v8];
      }

      v5 = [v3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v5);
  }

  v11 = *MEMORY[0x277D85DE8];

  return v2;
}

- (id)rq_stringForKey:()MGRemoteQueryCoding
{
  v1 = [a1 objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [MEMORY[0x277CCACA8] rq_instanceFromCoded:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)rq_numberForKey:()MGRemoteQueryCoding
{
  v1 = [a1 objectForKey:?];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v2 = [MEMORY[0x277CCABB0] rq_instanceFromCoded:v1];
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

- (id)rq_decodedObjectOfClass:()MGRemoteQueryCoding forKey:
{
  v5 = [a1 objectForKey:a4];
  if (v5)
  {
    v6 = [a3 rq_instanceFromCoded:v5];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (id)rq_arrayOfDecodedClass:()MGRemoteQueryCoding forKey:
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = [a1 objectForKey:a4];
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v6 = v5;
    v7 = [MEMORY[0x277CBEB18] arrayWithCapacity:{objc_msgSend(v6, "count")}];
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v19 = 0u;
    v8 = v6;
    v9 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v17;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v17 != v11)
          {
            objc_enumerationMutation(v8);
          }

          v13 = [a3 rq_instanceFromCoded:{*(*(&v16 + 1) + 8 * i), v16}];
          if (v13)
          {
            [v7 addObject:v13];
          }
        }

        v10 = [v8 countByEnumeratingWithState:&v16 objects:v20 count:16];
      }

      while (v10);
    }
  }

  else
  {
    v7 = 0;
  }

  v14 = *MEMORY[0x277D85DE8];

  return v7;
}

@end