@interface ASEmailChangeFlagsAction
- (ASEmailChangeFlagsAction)initWithServerID:(id)a3 read:(BOOL)a4 flagged:(BOOL)a5 changedFlags:(unint64_t)a6;
- (void)appendApplicationDataForTask:(id)a3 toWBXMLData:(id)a4;
@end

@implementation ASEmailChangeFlagsAction

- (ASEmailChangeFlagsAction)initWithServerID:(id)a3 read:(BOOL)a4 flagged:(BOOL)a5 changedFlags:(unint64_t)a6
{
  v10.receiver = self;
  v10.super_class = ASEmailChangeFlagsAction;
  result = [(ASEmailChangeFlagsAction *)&v10 initWithItemChangeType:1 changedItem:0 serverId:a3];
  if (result)
  {
    result->_read = a4;
    result->_flagged = a5;
    result->_changedFlags = a6;
  }

  return result;
}

- (void)appendApplicationDataForTask:(id)a3 toWBXMLData:(id)a4
{
  v6 = a4;
  [v6 switchToCodePage:2];
  changedFlags = self->_changedFlags;
  if (changedFlags)
  {
    [v6 appendTag:21 withIntContent:self->_read];
    changedFlags = self->_changedFlags;
  }

  if ((changedFlags & 2) != 0)
  {
    if (self->_flagged)
    {
      [v6 openTag:58];
      [v6 appendTag:59 withIntContent:2];
      [v6 appendTag:61 withStringContent:@"Flag for follow up"];
      [v6 closeTag:58];
    }

    else
    {
      [v6 appendEmptyTag:58];
    }
  }
}

@end