@interface IDSIDInfoResult
- (BOOL)isEqual:(id)a3;
- (IDSIDInfoResult)initWithCoder:(id)a3;
- (IDSIDInfoResult)initWithURI:(id)a3 status:(int64_t)a4 endpoints:(id)a5 ktData:(id)a6 gameCenterData:(id)a7;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IDSIDInfoResult

- (IDSIDInfoResult)initWithURI:(id)a3 status:(int64_t)a4 endpoints:(id)a5 ktData:(id)a6 gameCenterData:(id)a7
{
  v13 = a3;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = IDSIDInfoResult;
  v17 = [(IDSIDInfoResult *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_uri, a3);
    v18->_status = a4;
    objc_storeStrong(&v18->_endpoints, a5);
    objc_storeStrong(&v18->_ktData, a6);
    objc_storeStrong(&v18->_gameCenterData, a7);
  }

  return v18;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(IDSIDInfoResult *)self uri];
  v5 = [(IDSIDInfoResult *)self status];
  v6 = [(IDSIDInfoResult *)self endpoints];
  v7 = [(IDSIDInfoResult *)self ktData];
  v8 = [(IDSIDInfoResult *)self gameCenterData];
  v9 = [v3 stringWithFormat:@"<IDSIDInfoResult %p>: uri %@ status %ld endpoints %@ ktData %@ gameCenterData %@", self, v4, v5, v6, v7, v8];

  return v9;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if (self == v4)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = v4;
      uri = self->_uri;
      v7 = [(IDSIDInfoResult *)v5 uri];
      if (![(NSString *)uri isEqualToString:v7])
      {
        v18 = 0;
LABEL_23:

        goto LABEL_24;
      }

      v8 = [MEMORY[0x1E696AD98] numberWithInteger:self->_status];
      v9 = [MEMORY[0x1E696AD98] numberWithInteger:{-[IDSIDInfoResult status](v5, "status")}];
      if (![v8 isEqualToNumber:v9])
      {
        v18 = 0;
LABEL_22:

        goto LABEL_23;
      }

      v10 = [MEMORY[0x1E695DFD8] setWithArray:self->_endpoints];
      v11 = MEMORY[0x1E695DFD8];
      v12 = [(IDSIDInfoResult *)v5 endpoints];
      v13 = [v11 setWithArray:v12];
      if (![v10 isEqualToSet:v13])
      {
        v18 = 0;
LABEL_21:

        goto LABEL_22;
      }

      v28 = v10;
      ktData = self->_ktData;
      v27 = [(IDSIDInfoResult *)v5 ktData];
      v15 = [(IDSIDKTData *)ktData isEqual:?];
      if (!v15)
      {
        v16 = self->_ktData;
        v17 = [(IDSIDInfoResult *)v5 ktData];
        if (v16 != v17)
        {
          v18 = 0;
LABEL_19:

LABEL_20:
          v10 = v28;
          goto LABEL_21;
        }

        v24 = v17;
      }

      v26 = v15;
      gameCenterData = self->_gameCenterData;
      v20 = [(IDSIDInfoResult *)v5 gameCenterData];
      if ([(IDSGameCenterData *)gameCenterData isEqual:v20])
      {

        v18 = 1;
      }

      else
      {
        v21 = self->_gameCenterData;
        v22 = [(IDSIDInfoResult *)v5 gameCenterData];
        v18 = v21 == v22;
      }

      v17 = v25;
      if (v26)
      {
        goto LABEL_20;
      }

      goto LABEL_19;
    }

    v18 = 0;
  }

LABEL_24:

  return v18;
}

- (void)encodeWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(IDSIDInfoResult *)self uri];
  [v4 encodeObject:v5 forKey:@"IDSIDInfoResultURIKey"];

  [v4 encodeInteger:-[IDSIDInfoResult status](self forKey:{"status"), @"IDSIDInfoResultStatusKey"}];
  v6 = [(IDSIDInfoResult *)self endpoints];
  [v4 encodeObject:v6 forKey:@"IDSIDInfoResultEndpointsKey"];

  v7 = [(IDSIDInfoResult *)self ktData];
  [v4 encodeObject:v7 forKey:@"IDSIDInfoResultKTDataKey"];

  v8 = [(IDSIDInfoResult *)self gameCenterData];
  [v4 encodeObject:v8 forKey:@"IDSIDInfoResultGameCenterDataKey"];
}

- (IDSIDInfoResult)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectForKey:@"IDSIDInfoResultURIKey"];
  v6 = [v4 decodeIntegerForKey:@"IDSIDInfoResultStatusKey"];
  v7 = [v4 decodeObjectForKey:@"IDSIDInfoResultEndpointsKey"];
  v8 = [v4 decodeObjectForKey:@"IDSIDInfoResultKTDataKey"];
  v9 = [v4 decodeObjectForKey:@"IDSIDInfoResultGameCenterDataKey"];

  v10 = [(IDSIDInfoResult *)self initWithURI:v5 status:v6 endpoints:v7 ktData:v8 gameCenterData:v9];
  return v10;
}

@end