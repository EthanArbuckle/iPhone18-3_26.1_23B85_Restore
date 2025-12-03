@interface MGGroup(MGRemoteQueryCoding)
+ (id)rq_decodedProperties:()MGRemoteQueryCoding;
+ (id)rq_instanceFromCoded:()MGRemoteQueryCoding;
- (id)rq_coded;
- (id)rq_codedProperties;
@end

@implementation MGGroup(MGRemoteQueryCoding)

- (id)rq_codedProperties
{
  v0 = objc_alloc_init(MEMORY[0x277CBEAC0]);

  return v0;
}

+ (id)rq_decodedProperties:()MGRemoteQueryCoding
{
  v0 = objc_alloc_init(MEMORY[0x277CBEAC0]);

  return v0;
}

- (id)rq_coded
{
  dictionary = [MEMORY[0x277CBEB38] dictionary];
  identifier = [self identifier];
  rq_coded = [identifier rq_coded];

  name = [self name];
  rq_coded2 = [name rq_coded];

  type = [self type];
  rq_coded3 = [type rq_coded];

  memberIdentifiers = [self memberIdentifiers];
  rq_coded4 = [memberIdentifiers rq_coded];

  rq_codedProperties = [self rq_codedProperties];
  [dictionary setObject:rq_coded forKey:@"identifier"];
  if (rq_coded2)
  {
    [dictionary setObject:rq_coded2 forKey:@"name"];
  }

  [dictionary setObject:rq_coded3 forKey:@"type"];
  [dictionary setObject:rq_coded4 forKey:@"member_identifiers"];
  [dictionary setObject:rq_codedProperties forKey:@"properties"];

  return dictionary;
}

+ (id)rq_instanceFromCoded:()MGRemoteQueryCoding
{
  v3 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  v5 = [v4 rq_stringForKey:@"type"];
  if ([v5 length])
  {
    v6 = MGClassForMGGroupType(v5);
    if (v6)
    {
      v7 = [v4 rq_decodedObjectOfClass:objc_opt_class() forKey:@"identifier"];
      v8 = [v4 rq_stringForKey:@"name"];
      v9 = [v4 rq_arrayOfDecodedClass:objc_opt_class() forKey:@"member_identifiers"];
      v10 = [v4 objectForKey:@"properties"];
      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        v11 = v10;
      }

      else
      {
        v11 = 0;
      }

      if (v11)
      {
        v12 = [v6 rq_decodedProperties:v11];
        v13 = 0;
        if (v7 && v9 && v12)
        {
          v13 = [[v6 alloc] initWithConnectionProvider:0 type:v5 identifier:v7 name:v8 properties:v12 memberIdentifiers:v9];
        }
      }

      else
      {
        v12 = 0;
        v13 = 0;
      }

      v6 = v13;
    }
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

@end