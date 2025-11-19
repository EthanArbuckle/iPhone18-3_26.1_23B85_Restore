@interface MADVIVisualSearchGatingDomainInfo
- (CGPoint)focalPoint;
- (MADVIVisualSearchGatingDomainInfo)initWithCoder:(id)a3;
- (MADVIVisualSearchGatingDomainInfo)initWithDomain:(id)a3 label:(id)a4 glyphName:(id)a5 hasFocalPoint:(BOOL)a6 focalPoint:(CGPoint)a7 displayLabel:(id)a8 displayMessage:(id)a9;
- (id)description;
- (void)encodeWithCoder:(id)a3;
@end

@implementation MADVIVisualSearchGatingDomainInfo

- (MADVIVisualSearchGatingDomainInfo)initWithDomain:(id)a3 label:(id)a4 glyphName:(id)a5 hasFocalPoint:(BOOL)a6 focalPoint:(CGPoint)a7 displayLabel:(id)a8 displayMessage:(id)a9
{
  y = a7.y;
  x = a7.x;
  v25 = a3;
  v17 = a4;
  v18 = a5;
  v19 = a8;
  v20 = a9;
  v26.receiver = self;
  v26.super_class = MADVIVisualSearchGatingDomainInfo;
  v21 = [(MADVIVisualSearchGatingDomainInfo *)&v26 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_domain, a3);
    objc_storeStrong(&v22->_label, a4);
    objc_storeStrong(&v22->_glyphName, a5);
    v22->_hasFocalPoint = a6;
    v22->_focalPoint.x = x;
    v22->_focalPoint.y = y;
    objc_storeStrong(&v22->_displayLabel, a8);
    objc_storeStrong(&v22->_displayMessage, a9);
  }

  return v22;
}

- (MADVIVisualSearchGatingDomainInfo)initWithCoder:(id)a3
{
  v4 = a3;
  v19.receiver = self;
  v19.super_class = MADVIVisualSearchGatingDomainInfo;
  v5 = [(MADVIVisualSearchGatingDomainInfo *)&v19 init];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Domain"];
    domain = v5->_domain;
    v5->_domain = v6;

    v8 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"Label"];
    label = v5->_label;
    v5->_label = v8;

    v10 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"GlyphName"];
    glyphName = v5->_glyphName;
    v5->_glyphName = v10;

    v5->_hasFocalPoint = [v4 decodeBoolForKey:@"HasFocalPoint"];
    [v4 decodePointForKey:@"FocalPoint"];
    v5->_focalPoint.x = v12;
    v5->_focalPoint.y = v13;
    v14 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DisplayLabel"];
    displayLabel = v5->_displayLabel;
    v5->_displayLabel = v14;

    v16 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"DisplayMessage"];
    displayMessage = v5->_displayMessage;
    v5->_displayMessage = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  domain = self->_domain;
  v5 = a3;
  [v5 encodeObject:domain forKey:@"Domain"];
  [v5 encodeObject:self->_label forKey:@"Label"];
  [v5 encodeObject:self->_glyphName forKey:@"GlyphName"];
  [v5 encodeBool:self->_hasFocalPoint forKey:@"HasFocalPoint"];
  [v5 encodePoint:@"FocalPoint" forKey:{self->_focalPoint.x, self->_focalPoint.y}];
  [v5 encodeObject:self->_displayLabel forKey:@"DisplayLabel"];
  [v5 encodeObject:self->_displayMessage forKey:@"DisplayMessage"];
}

- (id)description
{
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [v3 appendFormat:@"<%@ %p, ", v5, self];

  [v3 appendFormat:@"domain: %@, ", self->_domain];
  [v3 appendFormat:@"label: %@, ", self->_label];
  [v3 appendFormat:@"glyphName: %@, ", self->_glyphName];
  [v3 appendFormat:@"hasFocalPoint: %d, ", self->_hasFocalPoint];
  [v3 appendFormat:@"focalPoint: (%0.2f, %0.2f), ", *&self->_focalPoint.x, *&self->_focalPoint.y];
  [v3 appendFormat:@"displayLabel: %@, ", self->_displayLabel];
  [v3 appendFormat:@"displayMessage: %@>", self->_displayMessage];

  return v3;
}

- (CGPoint)focalPoint
{
  x = self->_focalPoint.x;
  y = self->_focalPoint.y;
  result.y = y;
  result.x = x;
  return result;
}

@end