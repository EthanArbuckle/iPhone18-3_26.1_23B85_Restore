@interface FAScreentimeSettingsObjectCache
+ (id)objectWithData:(id)a3;
- (FAScreentimeSettingsObjectCache)initWithCoder:(id)a3;
- (FAScreentimeSettingsObjectCache)initWithIntroductionModel:(id)a3 date:(id)a4 dsid:(id)a5;
- (id)dataRepresentation;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FAScreentimeSettingsObjectCache

- (FAScreentimeSettingsObjectCache)initWithIntroductionModel:(id)a3 date:(id)a4 dsid:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = FAScreentimeSettingsObjectCache;
  v12 = [(FAScreentimeSettingsObjectCache *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_memberDSID, a5);
    objc_storeStrong(&v13->_date, a4);
    objc_storeStrong(&v13->_introductionModel, a3);
  }

  return v13;
}

- (void)encodeWithCoder:(id)a3
{
  date = self->_date;
  v5 = a3;
  [v5 encodeObject:date forKey:@"_date"];
  [v5 encodeObject:self->_introductionModel forKey:@"_introductionModel"];
  [v5 encodeObject:self->_memberDSID forKey:@"_memberDSID"];
}

- (FAScreentimeSettingsObjectCache)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [(FAScreentimeSettingsObjectCache *)self init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_date"];
    date = v5->_date;
    v5->_date = v6;

    +[FAScreentimeSettingsObjectCache introductionModelClass];
    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_introductionModel"];
    introductionModel = v5->_introductionModel;
    v5->_introductionModel = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"_memberDSID"];
    memberDSID = v5->_memberDSID;
    v5->_memberDSID = v10;
  }

  return v5;
}

+ (id)objectWithData:(id)a3
{
  v3 = MEMORY[0x1E696ACD0];
  v4 = a3;
  v5 = [[v3 alloc] initForReadingFromData:v4 error:0];

  v6 = objc_opt_class();
  v7 = NSStringFromClass(+[FAScreentimeSettingsObjectCache introductionModelClass]);
  v8 = [v5 decodeObjectOfClass:v6 forKey:v7];

  return v8;
}

- (id)dataRepresentation
{
  v3 = [objc_alloc(MEMORY[0x1E696ACC8]) initRequiringSecureCoding:1];
  v4 = NSStringFromClass(+[FAScreentimeSettingsObjectCache introductionModelClass]);
  [v3 encodeObject:self forKey:v4];

  v5 = [v3 encodedData];

  return v5;
}

@end