@interface IMUnreadCountReportDelta
- (IMUnreadCountReportDelta)initWithCoder:(id)a3;
- (IMUnreadCountReportDelta)initWithDeletedGUIDs:(id)a3 updatedReports:(id)a4 isReplacement:(BOOL)a5 fromStamp:(id)a6 toStamp:(id)a7;
- (void)encodeWithCoder:(id)a3;
@end

@implementation IMUnreadCountReportDelta

- (IMUnreadCountReportDelta)initWithDeletedGUIDs:(id)a3 updatedReports:(id)a4 isReplacement:(BOOL)a5 fromStamp:(id)a6 toStamp:(id)a7
{
  v12 = a3;
  v13 = a4;
  v14 = a6;
  v15 = a7;
  v22.receiver = self;
  v22.super_class = IMUnreadCountReportDelta;
  v16 = [(IMUnreadCountReportDelta *)&v22 init];
  v17 = v16;
  if (v16)
  {
    v18 = MEMORY[0x1E695E0F0];
    if (v12)
    {
      v19 = v12;
    }

    else
    {
      v19 = MEMORY[0x1E695E0F0];
    }

    objc_storeStrong(&v16->_deletedGUIDs, v19);
    if (v13)
    {
      v20 = v13;
    }

    else
    {
      v20 = v18;
    }

    objc_storeStrong(&v17->_updatedReports, v20);
    v17->_replacement = a5;
    objc_storeStrong(&v17->_fromStamp, a6);
    objc_storeStrong(&v17->_toStamp, a7);
  }

  return v17;
}

- (IMUnreadCountReportDelta)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"d"];
  v6 = [v4 decodeArrayOfObjectsOfClass:objc_opt_class() forKey:@"u"];
  v7 = [v4 decodeBoolForKey:@"r"];
  v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"f"];
  v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"t"];

  v10 = [(IMUnreadCountReportDelta *)self initWithDeletedGUIDs:v5 updatedReports:v6 isReplacement:v7 fromStamp:v8 toStamp:v9];
  return v10;
}

- (void)encodeWithCoder:(id)a3
{
  v15 = a3;
  v4 = [(IMUnreadCountReportDelta *)self deletedGUIDs];
  v5 = [v4 count];

  if (v5)
  {
    v6 = [(IMUnreadCountReportDelta *)self deletedGUIDs];
    [v15 encodeObject:v6 forKey:@"d"];
  }

  v7 = [(IMUnreadCountReportDelta *)self updatedReports];
  v8 = [v7 count];

  if (v8)
  {
    v9 = [(IMUnreadCountReportDelta *)self updatedReports];
    [v15 encodeObject:v9 forKey:@"u"];
  }

  if ([(IMUnreadCountReportDelta *)self isReplacement])
  {
    [v15 encodeBool:-[IMUnreadCountReportDelta isReplacement](self forKey:{"isReplacement"), @"r"}];
  }

  v10 = [(IMUnreadCountReportDelta *)self fromStamp];

  if (v10)
  {
    v11 = [(IMUnreadCountReportDelta *)self fromStamp];
    [v15 encodeObject:v11 forKey:@"f"];
  }

  v12 = [(IMUnreadCountReportDelta *)self toStamp];

  v13 = v15;
  if (v12)
  {
    v14 = [(IMUnreadCountReportDelta *)self toStamp];
    [v15 encodeObject:v14 forKey:@"t"];

    v13 = v15;
  }
}

@end