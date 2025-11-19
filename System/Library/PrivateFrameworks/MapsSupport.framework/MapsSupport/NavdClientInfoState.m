@interface NavdClientInfoState
- (id)description;
@end

@implementation NavdClientInfoState

- (id)description
{
  v3 = objc_retainBlock(self->_handler);
  v4 = v3;
  v5 = @"Server Allowed";
  if (self->_localUpdatesOnly)
  {
    v5 = @"LocalOnly";
  }

  v6 = [NSString stringWithFormat:@"[%@, %@, %@]", v3, v5, self->_uuid];

  return v6;
}

@end