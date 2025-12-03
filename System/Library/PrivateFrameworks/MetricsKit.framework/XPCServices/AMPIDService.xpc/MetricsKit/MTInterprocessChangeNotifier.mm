@interface MTInterprocessChangeNotifier
+ (void)notify:(id)notify;
- (MTInterprocessChangeNotifier)initWithIdentifier:(id)identifier onChange:(id)change;
- (void)dealloc;
- (void)notify;
- (void)stop;
@end

@implementation MTInterprocessChangeNotifier

- (MTInterprocessChangeNotifier)initWithIdentifier:(id)identifier onChange:(id)change
{
  identifierCopy = identifier;
  changeCopy = change;
  v17.receiver = self;
  v17.super_class = MTInterprocessChangeNotifier;
  v8 = [(MTInterprocessChangeNotifier *)&v17 init];
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = [MTInterprocessChangeNotifier fullIdentifier:identifierCopy];
  identifier = v8->_identifier;
  v8->_identifier = v9;

  v8->_token = -1;
  uTF8String = [(NSString *)v8->_identifier UTF8String];
  v12 = dispatch_get_global_queue(0, 0);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100002C1C;
  handler[3] = &unk_100020588;
  v16 = changeCopy;
  LODWORD(uTF8String) = notify_register_dispatch(uTF8String, &v8->_token, v12, handler);

  if (!uTF8String && v8->_token != -1)
  {

LABEL_6:
    v13 = v8;
    goto LABEL_7;
  }

  v13 = 0;
LABEL_7:

  return v13;
}

- (void)dealloc
{
  [(MTInterprocessChangeNotifier *)self stop];
  v3.receiver = self;
  v3.super_class = MTInterprocessChangeNotifier;
  [(MTInterprocessChangeNotifier *)&v3 dealloc];
}

- (void)notify
{
  if ((self->_token & 0x80000000) == 0)
  {
    uTF8String = [(NSString *)self->_identifier UTF8String];

    notify_post(uTF8String);
  }
}

- (void)stop
{
  token = self->_token;
  if ((token & 0x80000000) == 0 && notify_is_valid_token(token))
  {
    notify_cancel(self->_token);
    self->_token = -1;
  }
}

+ (void)notify:(id)notify
{
  v4 = [self fullIdentifier:notify];
  v3 = v4;
  notify_post([v4 UTF8String]);
}

@end