@interface _HDWorkoutCondenserBufferDatum
- (_HDWorkoutCondenserBufferDatum)init;
- (id)description;
@end

@implementation _HDWorkoutCondenserBufferDatum

- (_HDWorkoutCondenserBufferDatum)init
{
  v3 = MEMORY[0x277CBEAD8];
  v4 = *MEMORY[0x277CBE660];
  v5 = NSStringFromSelector(a2);
  [v3 raise:v4 format:{@"The -%@ method is not available on %@", v5, objc_opt_class()}];

  return 0;
}

- (id)description
{
  v3 = MEMORY[0x277CCACA8];
  v8.receiver = self;
  v8.super_class = _HDWorkoutCondenserBufferDatum;
  v4 = [(_HDWorkoutCondenserBufferDatum *)&v8 description];
  v5 = [objc_alloc(MEMORY[0x277CCAD78]) initWithUUIDBytes:self->_UUIDBytes];
  v6 = [v3 stringWithFormat:@"<%@: %@, %f, %f, %f, %d>", v4, v5, *&self->_startTime, *&self->_endTime, *&self->_value, self->_isSeries];

  return v6;
}

@end