@interface _CPSafariAttributes
- (BOOL)isEqual:(id)equal;
- (_CPSafariAttributes)initWithFacade:(id)facade;
- (void)writeTo:(id)to;
@end

@implementation _CPSafariAttributes

- (BOOL)isEqual:(id)equal
{
  equalCopy = equal;
  if ([equalCopy isMemberOfClass:objc_opt_class()])
  {
    hideReason = self->_hideReason;
    v6 = hideReason == [equalCopy hideReason];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)writeTo:(id)to
{
  toCopy = to;
  if ([(_CPSafariAttributes *)self hideReason])
  {
    hideReason = self->_hideReason;
    PBDataWriterWriteInt32Field();
  }
}

- (_CPSafariAttributes)initWithFacade:(id)facade
{
  facadeCopy = facade;
  v5 = [(_CPSafariAttributes *)self init];
  if (v5)
  {
    -[_CPSafariAttributes setHideReason:](v5, "setHideReason:", [facadeCopy hideReason]);
    v6 = v5;
  }

  return v5;
}

@end