@interface _CPRange
- (BOOL)isEqual:(id)equal;
- (void)writeTo:(id)to;
@end

@implementation _CPRange

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()] && (location = self->_location, location == objc_msgSend(equalCopy, "location")))
  {
    length = self->_length;
    v7 = length == [equalCopy length];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (void)writeTo:(id)to
{
  toCopy = to;
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