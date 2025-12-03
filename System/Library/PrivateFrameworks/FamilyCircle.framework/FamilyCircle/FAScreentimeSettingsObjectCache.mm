@interface FAScreentimeSettingsObjectCache
+ (id)objectWithData:(id)data;
- (FAScreentimeSettingsObjectCache)initWithCoder:(id)coder;
- (FAScreentimeSettingsObjectCache)initWithIntroductionModel:(id)model date:(id)date dsid:(id)dsid;
- (id)dataRepresentation;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FAScreentimeSettingsObjectCache

- (FAScreentimeSettingsObjectCache)initWithIntroductionModel:(id)model date:(id)date dsid:(id)dsid
{
  modelCopy = model;
  dateCopy = date;
  dsidCopy = dsid;
  v15.receiver = self;
  v15.super_class = FAScreentimeSettingsObjectCache;
  v12 = [(FAScreentimeSettingsObjectCache *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_memberDSID, dsid);
    objc_storeStrong(&v13->_date, date);
    objc_storeStrong(&v13->_introductionModel, model);
  }

  return v13;
}

- (void)encodeWithCoder:(id)coder
{
  date = self->_date;
  coderCopy = coder;
  [coderCopy encodeObject:date forKey:@"_date"];
  [coderCopy encodeObject:self->_introductionModel forKey:@"_introductionModel"];
  [coderCopy encodeObject:self->_memberDSID forKey:@"_memberDSID"];
}

- (FAScreentimeSettingsObjectCache)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [(FAScreentimeSettingsObjectCache *)self init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_date"];
    date = v5->_date;
    v5->_date = v6;

    +[FAScreentimeSettingsObjectCache introductionModelClass];
    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_introductionModel"];
    introductionModel = v5->_introductionModel;
    v5->_introductionModel = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"_memberDSID"];
    memberDSID = v5->_memberDSID;
    v5->_memberDSID = v10;
  }

  return v5;
}

+ (id)objectWithData:(id)data
{
  v3 = MEMORY[0x1E696ACD0];
  dataCopy = data;
  v5 = [[v3 alloc] initForReadingFromData:dataCopy error:0];

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

  encodedData = [v3 encodedData];

  return encodedData;
}

@end