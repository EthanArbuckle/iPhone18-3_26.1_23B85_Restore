@interface DDUIInfoPlist
- (id)description;
@end

@implementation DDUIInfoPlist

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  allValues = [(NSDictionary *)self->_browsesByIdentifier allValues];
  allValues2 = [(NSDictionary *)self->_advertisesByIdentifier allValues];
  v7 = [v3 stringWithFormat:@"<%@:%p browses: %@; advertises: %@>", v4, self, allValues, allValues2];;

  return v7;
}

@end