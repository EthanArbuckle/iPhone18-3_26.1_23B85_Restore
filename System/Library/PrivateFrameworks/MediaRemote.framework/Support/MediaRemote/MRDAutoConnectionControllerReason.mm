@interface MRDAutoConnectionControllerReason
+ (id)reasonWithType:(unint64_t)type string:(id)string;
- (id)description;
@end

@implementation MRDAutoConnectionControllerReason

+ (id)reasonWithType:(unint64_t)type string:(id)string
{
  stringCopy = string;
  v6 = objc_alloc_init(MRDAutoConnectionControllerReason);
  [(MRDAutoConnectionControllerReason *)v6 setType:type];
  [(MRDAutoConnectionControllerReason *)v6 setString:stringCopy];

  return v6;
}

- (id)description
{
  type = self->_type;
  if (type > 4)
  {
    v5 = @"endpointChanged";
  }

  else
  {
    v5 = off_1004BE980[type];
  }

  return [NSString stringWithFormat:@"<MRDAutoConnectionControllerReason %@ - %@>", v5, self->_string, v2, v3];
}

@end