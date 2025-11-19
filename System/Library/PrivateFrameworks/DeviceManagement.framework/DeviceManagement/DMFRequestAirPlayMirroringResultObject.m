@interface DMFRequestAirPlayMirroringResultObject
- (DMFRequestAirPlayMirroringResultObject)initWithCoder:(id)a3;
- (DMFRequestAirPlayMirroringResultObject)initWithStatus:(unint64_t)a3;
- (void)encodeWithCoder:(id)a3;
@end

@implementation DMFRequestAirPlayMirroringResultObject

- (DMFRequestAirPlayMirroringResultObject)initWithStatus:(unint64_t)a3
{
  v5.receiver = self;
  v5.super_class = DMFRequestAirPlayMirroringResultObject;
  result = [(CATTaskResultObject *)&v5 init];
  if (result)
  {
    result->_status = a3;
  }

  return result;
}

- (DMFRequestAirPlayMirroringResultObject)initWithCoder:(id)a3
{
  v4 = a3;
  v8.receiver = self;
  v8.super_class = DMFRequestAirPlayMirroringResultObject;
  v5 = [(CATTaskResultObject *)&v8 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"status"];
    v5->_status = [v6 unsignedIntegerValue];
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v6.receiver = self;
  v6.super_class = DMFRequestAirPlayMirroringResultObject;
  v4 = a3;
  [(CATTaskResultObject *)&v6 encodeWithCoder:v4];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:{-[DMFRequestAirPlayMirroringResultObject status](self, "status", v6.receiver, v6.super_class)}];
  [v4 encodeObject:v5 forKey:@"status"];
}

@end