@interface EMAccount
- (BOOL)isEqual:(id)a3;
- (id)ef_publicDescription;
@end

@implementation EMAccount

- (id)ef_publicDescription
{
  v3 = [MEMORY[0x1E699B7B0] currentDevice];
  v4 = [v3 isInternal];

  if (v4)
  {
    v5 = [(EMObject *)self debugDescription];
  }

  else
  {
    v6 = [(EMObject *)self objectID];
    v7 = [v6 stringHash];

    v8 = MEMORY[0x1E696AEC0];
    v9 = objc_opt_class();
    v10 = [v7 ef_publicDescription];
    v5 = [v8 stringWithFormat:@"<%@: %p>\n\tObjectID:%@", v9, self, v10];
  }

  return v5;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = objc_opt_class();
  if ([v5 isEqual:objc_opt_class()] & 1) != 0 && (objc_opt_class(), (objc_opt_isKindOfClass()))
  {
    v6 = v4;
    v7 = [(EMObject *)self objectID];
    v8 = [v6 objectID];
    v9 = [v7 isEqual:v8];
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

@end