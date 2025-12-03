@interface TKTableViewCellSubtitle
- (TKTableViewCellSubtitle)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier;
@end

@implementation TKTableViewCellSubtitle

- (TKTableViewCellSubtitle)initWithStyle:(int64_t)style reuseIdentifier:(id)identifier
{
  selfCopy = self;
  location[2] = a2;
  location[1] = style;
  location[0] = 0;
  objc_storeStrong(location, identifier);
  v4 = selfCopy;
  selfCopy = 0;
  v7.receiver = v4;
  v7.super_class = TKTableViewCellSubtitle;
  selfCopy = [(TKTableViewCellSubtitle *)&v7 initWithStyle:3 reuseIdentifier:location[0]];
  objc_storeStrong(&selfCopy, selfCopy);
  v6 = MEMORY[0x277D82BE0](selfCopy);
  objc_storeStrong(location, 0);
  objc_storeStrong(&selfCopy, 0);
  return v6;
}

@end