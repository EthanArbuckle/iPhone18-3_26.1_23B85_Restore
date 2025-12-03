@interface CPGroupActivityDescription
+ (id)activityContextWithDescriptionIdentifier:(id)identifier;
- (CPGroupActivityDescription)init;
@end

@implementation CPGroupActivityDescription

+ (id)activityContextWithDescriptionIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v4 = specialized static CPGroupActivityDescription.activityContext(with:)();

  return v4;
}

- (CPGroupActivityDescription)init
{
  v3.receiver = self;
  v3.super_class = type metadata accessor for CPGroupActivityDescription();
  return [(CPGroupActivityDescription *)&v3 init];
}

@end