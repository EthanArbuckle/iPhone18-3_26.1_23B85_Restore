@interface IDSIDInfoResult
- (BOOL)isEqual:(id)equal;
- (IDSIDInfoResult)initWithCoder:(id)coder;
- (IDSIDInfoResult)initWithURI:(id)i status:(int64_t)status endpoints:(id)endpoints ktData:(id)data gameCenterData:(id)centerData;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IDSIDInfoResult

- (IDSIDInfoResult)initWithURI:(id)i status:(int64_t)status endpoints:(id)endpoints ktData:(id)data gameCenterData:(id)centerData
{
  iCopy = i;
  endpointsCopy = endpoints;
  dataCopy = data;
  centerDataCopy = centerData;
  v20.receiver = self;
  v20.super_class = IDSIDInfoResult;
  v17 = [(IDSIDInfoResult *)&v20 init];
  v18 = v17;
  if (v17)
  {
    objc_storeStrong(&v17->_uri, i);
    v18->_status = status;
    objc_storeStrong(&v18->_endpoints, endpoints);
    objc_storeStrong(&v18->_ktData, data);
    objc_storeStrong(&v18->_gameCenterData, centerData);
  }

  return v18;
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = [(IDSIDInfoResult *)self uri];
  status = [(IDSIDInfoResult *)self status];
  endpoints = [(IDSIDInfoResult *)self endpoints];
  ktData = [(IDSIDInfoResult *)self ktData];
  gameCenterData = [(IDSIDInfoResult *)self gameCenterData];
  v9 = [v3 stringWithFormat:@"<IDSIDInfoResult %p>: uri %@ status %ld endpoints %@ ktData %@ gameCenterData %@", self, v4, status, endpoints, ktData, gameCenterData];

  return v9;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if (self == equalCopy)
  {
    v18 = 1;
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v5 = equalCopy;
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
      endpoints = [(IDSIDInfoResult *)v5 endpoints];
      v13 = [v11 setWithArray:endpoints];
      if (![v10 isEqualToSet:v13])
      {
        v18 = 0;
LABEL_21:

        goto LABEL_22;
      }

      v28 = v10;
      ktData = self->_ktData;
      ktData = [(IDSIDInfoResult *)v5 ktData];
      v15 = [(IDSIDKTData *)ktData isEqual:?];
      if (!v15)
      {
        v16 = self->_ktData;
        ktData2 = [(IDSIDInfoResult *)v5 ktData];
        if (v16 != ktData2)
        {
          v18 = 0;
LABEL_19:

LABEL_20:
          v10 = v28;
          goto LABEL_21;
        }

        v24 = ktData2;
      }

      v26 = v15;
      gameCenterData = self->_gameCenterData;
      gameCenterData = [(IDSIDInfoResult *)v5 gameCenterData];
      if ([(IDSGameCenterData *)gameCenterData isEqual:gameCenterData])
      {

        v18 = 1;
      }

      else
      {
        v21 = self->_gameCenterData;
        gameCenterData2 = [(IDSIDInfoResult *)v5 gameCenterData];
        v18 = v21 == gameCenterData2;
      }

      ktData2 = v25;
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

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(IDSIDInfoResult *)self uri];
  [coderCopy encodeObject:v5 forKey:@"IDSIDInfoResultURIKey"];

  [coderCopy encodeInteger:-[IDSIDInfoResult status](self forKey:{"status"), @"IDSIDInfoResultStatusKey"}];
  endpoints = [(IDSIDInfoResult *)self endpoints];
  [coderCopy encodeObject:endpoints forKey:@"IDSIDInfoResultEndpointsKey"];

  ktData = [(IDSIDInfoResult *)self ktData];
  [coderCopy encodeObject:ktData forKey:@"IDSIDInfoResultKTDataKey"];

  gameCenterData = [(IDSIDInfoResult *)self gameCenterData];
  [coderCopy encodeObject:gameCenterData forKey:@"IDSIDInfoResultGameCenterDataKey"];
}

- (IDSIDInfoResult)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectForKey:@"IDSIDInfoResultURIKey"];
  v6 = [coderCopy decodeIntegerForKey:@"IDSIDInfoResultStatusKey"];
  v7 = [coderCopy decodeObjectForKey:@"IDSIDInfoResultEndpointsKey"];
  v8 = [coderCopy decodeObjectForKey:@"IDSIDInfoResultKTDataKey"];
  v9 = [coderCopy decodeObjectForKey:@"IDSIDInfoResultGameCenterDataKey"];

  v10 = [(IDSIDInfoResult *)self initWithURI:v5 status:v6 endpoints:v7 ktData:v8 gameCenterData:v9];
  return v10;
}

@end