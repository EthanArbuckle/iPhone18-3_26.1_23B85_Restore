@interface DRPasteAnnouncementEndpoint
- (DRPasteAnnouncementEndpoint)initWithCoder:(id)a3;
- (id)_initWithLocalizedName:(id)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DRPasteAnnouncementEndpoint

- (id)_initWithLocalizedName:(id)a3
{
  v4 = a3;
  v9.receiver = self;
  v9.super_class = DRPasteAnnouncementEndpoint;
  v5 = [(DRPasteAnnouncementEndpoint *)&v9 init];
  if (v5)
  {
    v6 = [v4 copy];
    localizedName = v5->_localizedName;
    v5->_localizedName = v6;
  }

  return v5;
}

- (DRPasteAnnouncementEndpoint)initWithCoder:(id)a3
{
  v4 = a3;
  v5 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"localizedName"];

  v6 = [(DRPasteAnnouncementEndpoint *)self _initWithLocalizedName:v5];
  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  localizedName = self->_localizedName;
  if (localizedName)
  {
    [a3 encodeObject:localizedName forKey:@"localizedName"];
  }
}

@end