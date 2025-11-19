@interface _CPRange
- (BOOL)isEqual:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _CPRange

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()] && (location = self->_location, location == objc_msgSend(v4, "location")))
  {
    length = self->_length;
    v7 = length == [v4 length];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)writeTo:(id)a3
{
  v6 = a3;
  if ([(_CPRange *)self location])
  {
    location = self->_location;
    PBDataWriterWriteUint64Field();
  }

  if ([(_CPRange *)self length])
  {
    length = self->_length;
    PBDataWriterWriteUint64Field();
  }
}

@end