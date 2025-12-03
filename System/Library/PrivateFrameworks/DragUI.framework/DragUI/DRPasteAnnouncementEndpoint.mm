@interface DRPasteAnnouncementEndpoint
- (DRPasteAnnouncementEndpoint)initWithCoder:(id)coder;
- (id)_initWithLocalizedName:(id)name;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DRPasteAnnouncementEndpoint

- (id)_initWithLocalizedName:(id)name
{
  nameCopy = name;
  v9.receiver = self;
  v9.super_class = DRPasteAnnouncementEndpoint;
  v5 = [(DRPasteAnnouncementEndpoint *)&v9 init];
  if (v5)
  {
    v6 = [nameCopy copy];
    localizedName = v5->_localizedName;
    v5->_localizedName = v6;
  }

  return v5;
}

- (DRPasteAnnouncementEndpoint)initWithCoder:(id)coder
{
  coderCopy = coder;
  v5 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"localizedName"];

  v6 = [(DRPasteAnnouncementEndpoint *)self _initWithLocalizedName:v5];
  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  localizedName = self->_localizedName;
  if (localizedName)
  {
    [coder encodeObject:localizedName forKey:@"localizedName"];
  }
}

@end