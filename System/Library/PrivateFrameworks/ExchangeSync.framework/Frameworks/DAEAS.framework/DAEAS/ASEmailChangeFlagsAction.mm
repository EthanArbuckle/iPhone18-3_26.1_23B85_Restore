@interface ASEmailChangeFlagsAction
- (ASEmailChangeFlagsAction)initWithServerID:(id)d read:(BOOL)read flagged:(BOOL)flagged changedFlags:(unint64_t)flags;
- (void)appendApplicationDataForTask:(id)task toWBXMLData:(id)data;
@end

@implementation ASEmailChangeFlagsAction

- (ASEmailChangeFlagsAction)initWithServerID:(id)d read:(BOOL)read flagged:(BOOL)flagged changedFlags:(unint64_t)flags
{
  v10.receiver = self;
  v10.super_class = ASEmailChangeFlagsAction;
  result = [(ASEmailChangeFlagsAction *)&v10 initWithItemChangeType:1 changedItem:0 serverId:d];
  if (result)
  {
    result->_read = read;
    result->_flagged = flagged;
    result->_changedFlags = flags;
  }

  return result;
}

- (void)appendApplicationDataForTask:(id)task toWBXMLData:(id)data
{
  dataCopy = data;
  [dataCopy switchToCodePage:2];
  changedFlags = self->_changedFlags;
  if (changedFlags)
  {
    [dataCopy appendTag:21 withIntContent:self->_read];
    changedFlags = self->_changedFlags;
  }

  if ((changedFlags & 2) != 0)
  {
    if (self->_flagged)
    {
      [dataCopy openTag:58];
      [dataCopy appendTag:59 withIntContent:2];
      [dataCopy appendTag:61 withStringContent:@"Flag for follow up"];
      [dataCopy closeTag:58];
    }

    else
    {
      [dataCopy appendEmptyTag:58];
    }
  }
}

@end