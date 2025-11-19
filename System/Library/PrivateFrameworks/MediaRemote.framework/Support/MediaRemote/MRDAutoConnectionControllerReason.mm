@interface MRDAutoConnectionControllerReason
+ (id)reasonWithType:(unint64_t)a3 string:(id)a4;
- (id)description;
@end

@implementation MRDAutoConnectionControllerReason

+ (id)reasonWithType:(unint64_t)a3 string:(id)a4
{
  v5 = a4;
  v6 = objc_alloc_init(MRDAutoConnectionControllerReason);
  [(MRDAutoConnectionControllerReason *)v6 setType:a3];
  [(MRDAutoConnectionControllerReason *)v6 setString:v5];

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