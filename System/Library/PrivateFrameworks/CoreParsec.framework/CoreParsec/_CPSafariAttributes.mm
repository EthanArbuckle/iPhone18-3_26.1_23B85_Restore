@interface _CPSafariAttributes
- (BOOL)isEqual:(id)a3;
- (_CPSafariAttributes)initWithFacade:(id)a3;
- (void)writeTo:(id)a3;
@end

@implementation _CPSafariAttributes

- (BOOL)isEqual:(id)a3
{
  v4 = a3;
  if ([v4 isMemberOfClass:objc_opt_class()])
  {
    hideReason = self->_hideReason;
    v6 = hideReason == [v4 hideReason];
  }

  else
  {
    v6 = 0;
  }

  return v6;
}

- (void)writeTo:(id)a3
{
  v5 = a3;
  if ([(_CPSafariAttributes *)self hideReason])
  {
    hideReason = self->_hideReason;
    PBDataWriterWriteInt32Field();
  }
}

- (_CPSafariAttributes)initWithFacade:(id)a3
{
  v4 = a3;
  v5 = [(_CPSafariAttributes *)self init];
  if (v5)
  {
    -[_CPSafariAttributes setHideReason:](v5, "setHideReason:", [v4 hideReason]);
    v6 = v5;
  }

  return v5;
}

@end