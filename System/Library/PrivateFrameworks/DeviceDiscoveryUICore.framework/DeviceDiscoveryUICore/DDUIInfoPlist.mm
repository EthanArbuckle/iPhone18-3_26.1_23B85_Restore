@interface DDUIInfoPlist
- (id)description;
@end

@implementation DDUIInfoPlist

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = [(NSDictionary *)self->_browsesByIdentifier allValues];
  v6 = [(NSDictionary *)self->_advertisesByIdentifier allValues];
  v7 = [v3 stringWithFormat:@"<%@:%p browses: %@; advertises: %@>", v4, self, v5, v6];;

  return v7;
}

@end