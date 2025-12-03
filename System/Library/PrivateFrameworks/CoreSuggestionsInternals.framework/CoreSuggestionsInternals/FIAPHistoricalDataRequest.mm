@interface FIAPHistoricalDataRequest
+ (id)historicalDataRequestWithPersonHandle:(id)handle startDate:(id)date endDate:(id)endDate;
- (BOOL)_dateRangeIsSubsetOfHistoricalDataRequest:(id)request;
- (BOOL)isEqual:(id)equal;
- (BOOL)isEqualToHistoricalDataRequest:(id)request;
- (BOOL)subsetOfHistoricalDataRequest:(id)request;
- (FIAPHistoricalDataRequest)initWithCoder:(id)coder;
- (FIAPHistoricalDataRequest)initWithRequestId:(unint64_t)id pluginIdentifier:(id)identifier personHandle:(id)handle startDate:(id)date endDate:(id)endDate;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (unint64_t)hash;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FIAPHistoricalDataRequest

- (BOOL)subsetOfHistoricalDataRequest:(id)request
{
  requestCopy = request;
  v5 = self->_personHandle;
  v6 = v5;
  if (v5 == requestCopy[3])
  {

    goto LABEL_5;
  }

  v7 = [(NSString *)v5 isEqual:?];

  if (v7)
  {
LABEL_5:
    v8 = [(FIAPHistoricalDataRequest *)self _dateRangeIsSubsetOfHistoricalDataRequest:requestCopy];
    goto LABEL_6;
  }

  v8 = 0;
LABEL_6:

  return v8;
}

- (BOOL)_dateRangeIsSubsetOfHistoricalDataRequest:(id)request
{
  startDate = self->_startDate;
  v5 = *(request + 4);
  requestCopy = request;
  v7 = [(NSDate *)startDate compare:v5];
  endDate = self->_endDate;
  v9 = requestCopy[5];

  v10 = [(NSDate *)endDate compare:v9]+ 1;
  return v7 < 2 && v10 < 2;
}

- (BOOL)isEqualToHistoricalDataRequest:(id)request
{
  requestCopy = request;
  if (!requestCopy)
  {
    goto LABEL_16;
  }

  v5 = self->_personHandle;
  v6 = v5;
  if (v5 == requestCopy[3])
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
  if (v8 == requestCopy[2])
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
  if (v11 == requestCopy[4])
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
  if (v14 == requestCopy[5])
  {

    goto LABEL_19;
  }

  v16 = [(NSDate *)v14 isEqual:?];

  if (v16)
  {
LABEL_19:
    v17 = self->_requestId == requestCopy[1];
    goto LABEL_17;
  }

LABEL_16:
  v17 = 0;
LABEL_17:

  return v17;
}

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  v5 = equalCopy;
  if (equalCopy == self)
  {
    v6 = 1;
  }

  else
  {
    v6 = equalCopy && (objc_opt_class(), (objc_opt_isKindOfClass() & 1) != 0) && [(FIAPHistoricalDataRequest *)self isEqualToHistoricalDataRequest:v5];
  }

  return v6;
}

- (id)copyWithZone:(_NSZone *)zone
{
  objc_opt_class();
  v5 = objc_opt_new();
  v6 = v5;
  if (v5)
  {
    *(v5 + 8) = self->_requestId;
    v7 = [(NSString *)self->_pluginIdentifier copyWithZone:zone];
    v8 = v6[2];
    v6[2] = v7;

    v9 = [(NSString *)self->_personHandle copyWithZone:zone];
    v10 = v6[3];
    v6[3] = v9;

    v11 = [(NSDate *)self->_startDate copyWithZone:zone];
    v12 = v6[4];
    v6[4] = v11;

    v13 = [(NSDate *)self->_endDate copyWithZone:zone];
    v14 = v6[5];
    v6[5] = v13;
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  requestId = self->_requestId;
  coderCopy = coder;
  [coderCopy encodeInt64:requestId forKey:@"rid"];
  [coderCopy encodeObject:self->_pluginIdentifier forKey:@"pid"];
  [coderCopy encodeObject:self->_personHandle forKey:@"prh"];
  [coderCopy encodeObject:self->_startDate forKey:@"sdt"];
  [coderCopy encodeObject:self->_endDate forKey:@"edt"];
}

- (FIAPHistoricalDataRequest)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeInt64ForKey:@"rid"];
  v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"pid"];
  v7 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"prh"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sdt"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"edt"];

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

- (FIAPHistoricalDataRequest)initWithRequestId:(unint64_t)id pluginIdentifier:(id)identifier personHandle:(id)handle startDate:(id)date endDate:(id)endDate
{
  identifierCopy = identifier;
  handleCopy = handle;
  dateCopy = date;
  endDateCopy = endDate;
  v20.receiver = self;
  v20.super_class = FIAPHistoricalDataRequest;
  v17 = [(FIAPHistoricalDataRequest *)&v20 init];
  v18 = v17;
  if (v17)
  {
    v17->_requestId = id;
    objc_storeStrong(&v17->_pluginIdentifier, identifier);
    objc_storeStrong(&v18->_personHandle, handle);
    objc_storeStrong(&v18->_startDate, date);
    objc_storeStrong(&v18->_endDate, endDate);
  }

  return v18;
}

+ (id)historicalDataRequestWithPersonHandle:(id)handle startDate:(id)date endDate:(id)endDate
{
  endDateCopy = endDate;
  dateCopy = date;
  handleCopy = handle;
  v10 = [[FIAPHistoricalDataRequest alloc] initWithPersonHandle:handleCopy startDate:dateCopy endDate:endDateCopy];

  return v10;
}

@end