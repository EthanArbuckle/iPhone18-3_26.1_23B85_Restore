@interface MADVIVisualSearchGatingDomainInfo
- (CGPoint)focalPoint;
- (MADVIVisualSearchGatingDomainInfo)initWithCoder:(id)coder;
- (MADVIVisualSearchGatingDomainInfo)initWithDomain:(id)domain label:(id)label glyphName:(id)name hasFocalPoint:(BOOL)point focalPoint:(CGPoint)focalPoint displayLabel:(id)displayLabel displayMessage:(id)message;
- (id)description;
- (void)encodeWithCoder:(id)coder;
@end

@implementation MADVIVisualSearchGatingDomainInfo

- (MADVIVisualSearchGatingDomainInfo)initWithDomain:(id)domain label:(id)label glyphName:(id)name hasFocalPoint:(BOOL)point focalPoint:(CGPoint)focalPoint displayLabel:(id)displayLabel displayMessage:(id)message
{
  y = focalPoint.y;
  x = focalPoint.x;
  domainCopy = domain;
  labelCopy = label;
  nameCopy = name;
  displayLabelCopy = displayLabel;
  messageCopy = message;
  v26.receiver = self;
  v26.super_class = MADVIVisualSearchGatingDomainInfo;
  v21 = [(MADVIVisualSearchGatingDomainInfo *)&v26 init];
  v22 = v21;
  if (v21)
  {
    objc_storeStrong(&v21->_domain, domain);
    objc_storeStrong(&v22->_label, label);
    objc_storeStrong(&v22->_glyphName, name);
    v22->_hasFocalPoint = point;
    v22->_focalPoint.x = x;
    v22->_focalPoint.y = y;
    objc_storeStrong(&v22->_displayLabel, displayLabel);
    objc_storeStrong(&v22->_displayMessage, message);
  }

  return v22;
}

- (MADVIVisualSearchGatingDomainInfo)initWithCoder:(id)coder
{
  coderCopy = coder;
  v19.receiver = self;
  v19.super_class = MADVIVisualSearchGatingDomainInfo;
  v5 = [(MADVIVisualSearchGatingDomainInfo *)&v19 init];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Domain"];
    domain = v5->_domain;
    v5->_domain = v6;

    v8 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"Label"];
    label = v5->_label;
    v5->_label = v8;

    v10 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"GlyphName"];
    glyphName = v5->_glyphName;
    v5->_glyphName = v10;

    v5->_hasFocalPoint = [coderCopy decodeBoolForKey:@"HasFocalPoint"];
    [coderCopy decodePointForKey:@"FocalPoint"];
    v5->_focalPoint.x = v12;
    v5->_focalPoint.y = v13;
    v14 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DisplayLabel"];
    displayLabel = v5->_displayLabel;
    v5->_displayLabel = v14;

    v16 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"DisplayMessage"];
    displayMessage = v5->_displayMessage;
    v5->_displayMessage = v16;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  domain = self->_domain;
  coderCopy = coder;
  [coderCopy encodeObject:domain forKey:@"Domain"];
  [coderCopy encodeObject:self->_label forKey:@"Label"];
  [coderCopy encodeObject:self->_glyphName forKey:@"GlyphName"];
  [coderCopy encodeBool:self->_hasFocalPoint forKey:@"HasFocalPoint"];
  [coderCopy encodePoint:@"FocalPoint" forKey:{self->_focalPoint.x, self->_focalPoint.y}];
  [coderCopy encodeObject:self->_displayLabel forKey:@"DisplayLabel"];
  [coderCopy encodeObject:self->_displayMessage forKey:@"DisplayMessage"];
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  [string appendFormat:@"<%@ %p, ", v5, self];

  [string appendFormat:@"domain: %@, ", self->_domain];
  [string appendFormat:@"label: %@, ", self->_label];
  [string appendFormat:@"glyphName: %@, ", self->_glyphName];
  [string appendFormat:@"hasFocalPoint: %d, ", self->_hasFocalPoint];
  [string appendFormat:@"focalPoint: (%0.2f, %0.2f), ", *&self->_focalPoint.x, *&self->_focalPoint.y];
  [string appendFormat:@"displayLabel: %@, ", self->_displayLabel];
  [string appendFormat:@"displayMessage: %@>", self->_displayMessage];

  return string;
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