@interface MTInterprocessChangeNotifier
+ (void)notify:(id)a3;
- (MTInterprocessChangeNotifier)initWithIdentifier:(id)a3 onChange:(id)a4;
- (void)dealloc;
- (void)notify;
- (void)stop;
@end

@implementation MTInterprocessChangeNotifier

- (MTInterprocessChangeNotifier)initWithIdentifier:(id)a3 onChange:(id)a4
{
  v6 = a3;
  v7 = a4;
  v17.receiver = self;
  v17.super_class = MTInterprocessChangeNotifier;
  v8 = [(MTInterprocessChangeNotifier *)&v17 init];
  if (!v8)
  {
    goto LABEL_6;
  }

  v9 = [MTInterprocessChangeNotifier fullIdentifier:v6];
  identifier = v8->_identifier;
  v8->_identifier = v9;

  v8->_token = -1;
  v11 = [(NSString *)v8->_identifier UTF8String];
  v12 = dispatch_get_global_queue(0, 0);
  handler[0] = _NSConcreteStackBlock;
  handler[1] = 3221225472;
  handler[2] = sub_100002C1C;
  handler[3] = &unk_100020588;
  v16 = v7;
  LODWORD(v11) = notify_register_dispatch(v11, &v8->_token, v12, handler);

  if (!v11 && v8->_token != -1)
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
    v2 = [(NSString *)self->_identifier UTF8String];

    notify_post(v2);
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

+ (void)notify:(id)a3
{
  v4 = [a1 fullIdentifier:a3];
  v3 = v4;
  notify_post([v4 UTF8String]);
}

@end