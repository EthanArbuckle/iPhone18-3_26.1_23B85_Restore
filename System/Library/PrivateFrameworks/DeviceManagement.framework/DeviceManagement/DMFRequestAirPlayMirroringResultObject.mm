@interface DMFRequestAirPlayMirroringResultObject
- (DMFRequestAirPlayMirroringResultObject)initWithCoder:(id)coder;
- (DMFRequestAirPlayMirroringResultObject)initWithStatus:(unint64_t)status;
- (void)encodeWithCoder:(id)coder;
@end

@implementation DMFRequestAirPlayMirroringResultObject

- (DMFRequestAirPlayMirroringResultObject)initWithStatus:(unint64_t)status
{
  v5.receiver = self;
  v5.super_class = DMFRequestAirPlayMirroringResultObject;
  result = [(CATTaskResultObject *)&v5 init];
  if (result)
  {
    result->_status = status;
  }

  return result;
}

- (DMFRequestAirPlayMirroringResultObject)initWithCoder:(id)coder
{
  coderCopy = coder;
  v8.receiver = self;
  v8.super_class = DMFRequestAirPlayMirroringResultObject;
  v5 = [(CATTaskResultObject *)&v8 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"status"];
    v5->_status = [v6 unsignedIntegerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v6.receiver = self;
  v6.super_class = DMFRequestAirPlayMirroringResultObject;
  coderCopy = coder;
  [(CATTaskResultObject *)&v6 encodeWithCoder:coderCopy];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFRequestAirPlayMirroringResultObject status](self, "status", v6.receiver, v6.super_class)}];
  [coderCopy encodeObject:v5 forKey:@"status"];
}

@end