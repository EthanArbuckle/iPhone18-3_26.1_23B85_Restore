@interface IMUnreadCountReportDelta
- (IMUnreadCountReportDelta)initWithCoder:(id)coder;
- (IMUnreadCountReportDelta)initWithDeletedGUIDs:(id)ds updatedReports:(id)reports isReplacement:(BOOL)replacement fromStamp:(id)stamp toStamp:(id)toStamp;
- (void)encodeWithCoder:(id)coder;
@end

@implementation IMUnreadCountReportDelta

- (IMUnreadCountReportDelta)initWithDeletedGUIDs:(id)ds updatedReports:(id)reports isReplacement:(BOOL)replacement fromStamp:(id)stamp toStamp:(id)toStamp
{
  dsCopy = ds;
  reportsCopy = reports;
  stampCopy = stamp;
  toStampCopy = toStamp;
  v22.receiver = self;
  v22.super_class = IMUnreadCountReportDelta;
  v16 = [(IMUnreadCountReportDelta *)&v22 init];
  v17 = v16;
  if (v16)
  {
    v18 = MEMORY[0x1E695E0F0];
    if (dsCopy)
    {
      v19 = dsCopy;
    }

    else
    {
      v19 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v16->_deletedGUIDs, v19);
    if (reportsCopy)
    {
      v20 = reportsCopy;
    }

    else
    {
      v20 = v18;
    }

    objc_storeStrong(&v17->_updatedReports, v20);
    v17->_replacement = replacement;
    objc_storeStrong(&v17->_fromStamp, stamp);
    objc_storeStrong(&v17->_toStamp, toStamp);
  }

  return v17;
}

- (IMUnreadCountReportDelta)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"d"];
  v6 = [coderCopy decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"u"];
  v7 = [coderCopy decodeBoolForKey:@"r"];
  v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"f"];
  v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"t"];

  v10 = [(IMUnreadCountReportDelta *)self initWithDeletedGUIDs:v5 updatedReports:v6 isReplacement:v7 fromStamp:v8 toStamp:v9];
  return v10;
}

- (void)encodeWithCoder:(id)coder
{
  coderCopy = coder;
  deletedGUIDs = [(IMUnreadCountReportDelta *)self deletedGUIDs];
  v5 = [deletedGUIDs count];

  if (v5)
  {
    deletedGUIDs2 = [(IMUnreadCountReportDelta *)self deletedGUIDs];
    [coderCopy encodeObject:deletedGUIDs2 forKey:@"d"];
  }

  updatedReports = [(IMUnreadCountReportDelta *)self updatedReports];
  v8 = [updatedReports count];

  if (v8)
  {
    updatedReports2 = [(IMUnreadCountReportDelta *)self updatedReports];
    [coderCopy encodeObject:updatedReports2 forKey:@"u"];
  }

  if ([(IMUnreadCountReportDelta *)self isReplacement])
  {
    [coderCopy encodeBool:-[IMUnreadCountReportDelta isReplacement](self forKey:{"isReplacement"), @"r"}];
  }

  fromStamp = [(IMUnreadCountReportDelta *)self fromStamp];

  if (fromStamp)
  {
    fromStamp2 = [(IMUnreadCountReportDelta *)self fromStamp];
    [coderCopy encodeObject:fromStamp2 forKey:@"f"];
  }

  toStamp = [(IMUnreadCountReportDelta *)self toStamp];

  v13 = coderCopy;
  if (toStamp)
  {
    toStamp2 = [(IMUnreadCountReportDelta *)self toStamp];
    [coderCopy encodeObject:toStamp2 forKey:@"t"];

    v13 = coderCopy;
  }
}

@end