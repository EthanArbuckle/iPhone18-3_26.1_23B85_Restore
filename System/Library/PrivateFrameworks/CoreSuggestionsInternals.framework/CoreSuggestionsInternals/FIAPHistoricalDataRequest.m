@interface FIAPHistoricalDataRequest
+ (id)historicalDataRequestWithPersonHandle:(id)a3 startDate:(id)a4 endDate:(id)a5;
- (BOOL)_dateRangeIsSubsetOfHistoricalDataRequest:(id)a3;
- (BOOL)isEqual:(id)a3;
- (BOOL)isEqualToHistoricalDataRequest:(id)a3;
- (BOOL)subsetOfHistoricalDataRequest:(id)a3;
- (FIAPHistoricalDataRequest)initWithCoder:(id)a3;
- (FIAPHistoricalDataRequest)initWithRequestId:(unint64_t)a3 pluginIdentifier:(id)a4 personHandle:(id)a5 startDate:(id)a6 endDate:(id)a7;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FIAPHistoricalDataRequest

- (BOOL)subsetOfHistoricalDataRequest:(id)a3
{
  v4 = a3;
  v5 = self->_personHandle;
  v6 = v5;
  if (v5 == v4[3])
  {

    goto LABEL_5;
  }

  v7 = [(NSString *)v5 isEqual:?];

  if (v7)
  {
LABEL_5:
    v8 = [(FIAPHistoricalDataRequest *)self _dateRangeIsSubsetOfHistoricalDataRequest:v4];
    goto LABEL_6;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (BOOL)_dateRangeIsSubsetOfHistoricalDataRequest:(id)a3
{
  startDate = self->_startDate;
  v5 = *(a3 + 4);
  v6 = a3;
  v7 = [(NSDate *)startDate compare:v5];
  endDate = self->_endDate;
  v9 = v6[5];

  v10 = [(NSDate *)endDate compare:v9]+ 1;
  return v7 < 2 && v10 < 2;
}

- (BOOL)isEqualToHistoricalDataRequest:(id)a3
{
  v4 = a3;
  if (!v4)
  {
    goto LABEL_16;
  }

  v5 = self->_personHandle;
  v6 = v5;
  if (v5 == v4[3])
  {
  }

  else
  {
    v7 = [(NSString *)v5 isEqual:?];

    if ((v7 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v8 = self->_pluginIdentifier;
  v9 = v8;
  if (v8 == v4[2])
  {
  }

  else
  {
    v10 = [(NSString *)v8 isEqual:?];

    if ((v10 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v11 = self->_startDate;
  v12 = v11;
  if (v11 == v4[4])
  {
  }

  else
  {
    v13 = [(NSDate *)v11 isEqual:?];

    if ((v13 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v14 = self->_endDate;
  v15 = v14;
  if (v14 == v4[5])
  {

    goto LABEL_19;
  }

  v16 = [(NSDate *)v14 isEqual:?];

  if (v16)
  {
LABEL_19:
    v17 = self->_requestId == v4[1];
    goto LABEL_17;
  }

LABEL_16:
  v17 = 0;
LABEL_17:

  return v17;
}

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (v4 == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = v4 && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(FIAPHistoricalDataRequest *)self isEqualToHistoricalDataRequest:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)a3
{
  objc_opt_class();
  v5 = objc_opt_new();
  v6 = v5;
  if (v5)
  {
    *(v5 + 8) = self->_requestId;
    v7 = [(NSString *)self->_pluginIdentifier copyWithZone:a3];
    v8 = v6[2];
    v6[2] = v7;

    v9 = [(NSString *)self->_personHandle copyWithZone:a3];
    v10 = v6[3];
    v6[3] = v9;

    v11 = [(NSDate *)self->_startDate copyWithZone:a3];
    v12 = v6[4];
    v6[4] = v11;

    v13 = [(NSDate *)self->_endDate copyWithZone:a3];
    v14 = v6[5];
    v6[5] = v13;
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  requestId = self->_requestId;
  v5 = a3;
  [v5 encodeInt64:requestId forKey:@"rid"];
  [v5 encodeObject:self->_pluginIdentifier forKey:@"pid"];
  [v5 encodeObject:self->_personHandle forKey:@"prh"];
  [v5 encodeObject:self->_startDate forKey:@"sdt"];
  [v5 encodeObject:self->_endDate forKey:@"edt"];
}

- (FIAPHistoricalDataRequest)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeInt64ForKey:@"rid"];
  v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"pid"];
  v7 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"prh"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sdt"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"edt"];

  v10 = [(FIAPHistoricalDataRequest *)self initWithRequestId:v5 pluginIdentifier:v6 personHandle:v7 startDate:v8 endDate:v9];
  return v10;
}

- (unint64_t)hash
{
  requestId = self->_requestId;
  v4 = [(NSString *)self->_pluginIdentifier hash]- requestId + 32 * requestId;
  v5 = [(NSString *)self->_personHandle hash]- v4 + 32 * v4;
  v6 = [(NSDate *)self->_startDate hash]- v5 + 32 * v5;
  return [(NSDate *)self->_endDate hash]- v6 + 32 * v6;
}

- (id)description
{
  v3 = objc_alloc(MEMORY[0x277CCACA8]);
  endDate = self->_endDate;
  v5 = [v3 initWithFormat:@"<FIAPHistoricalDataRequest id:%llu p:%@ s:%@ e:%@ plugin:%@>", self->_requestId, self->_personHandle, self->_startDate, endDate, self->_pluginIdentifier];

  return v5;
}

- (FIAPHistoricalDataRequest)initWithRequestId:(unint64_t)a3 pluginIdentifier:(id)a4 personHandle:(id)a5 startDate:(id)a6 endDate:(id)a7
{
  v13 = a4;
  v14 = a5;
  v15 = a6;
  v16 = a7;
  v20.receiver = self;
  v20.super_class = FIAPHistoricalDataRequest;
  v17 = [(FIAPHistoricalDataRequest *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_requestId = a3;
    objc_storeStrong(&v17->_pluginIdentifier, a4);
    objc_storeStrong(&v18->_personHandle, a5);
    objc_storeStrong(&v18->_startDate, a6);
    objc_storeStrong(&v18->_endDate, a7);
  }

  return v18;
}

+ (id)historicalDataRequestWithPersonHandle:(id)a3 startDate:(id)a4 endDate:(id)a5
{
  v7 = a5;
  v8 = a4;
  v9 = a3;
  v10 = [[FIAPHistoricalDataRequest alloc] initWithPersonHandle:v9 startDate:v8 endDate:v7];

  return v10;
}

@end