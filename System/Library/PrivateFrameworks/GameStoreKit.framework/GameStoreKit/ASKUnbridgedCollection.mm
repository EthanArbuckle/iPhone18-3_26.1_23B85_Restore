@interface ASKUnbridgedCollection
- (ASKUnbridgedCollection)initWithCollection:(id)a3;
- (BOOL)isEqual:(id)a3;
- (id)debugDescription;
- (id)description;
- (unint64_t)hash;
@end

@implementation ASKUnbridgedCollection

- (ASKUnbridgedCollection)initWithCollection:(id)a3
{
  v5 = a3;
  v9.receiver = self;
  v9.super_class = ASKUnbridgedCollection;
  v6 = [(ASKUnbridgedCollection *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_collection, a3);
  }

  return v7;
}

- (unint64_t)hash
{
  v2 = [(ASKUnbridgedCollection *)self collection];
  v3 = [v2 hash];

  return v3;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v5 = v4;
    v6 = [(ASKUnbridgedCollection *)self collection];
    v7 = [v5 collection];

    v8 = [v6 isEqual:v7];
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (id)description
{
  v2 = [(ASKUnbridgedCollection *)self collection];
  v3 = [v2 description];

  return v3;
}

- (id)debugDescription
{
  v2 = [(ASKUnbridgedCollection *)self collection];
  v3 = [v2 debugDescription];

  return v3;
}

@end