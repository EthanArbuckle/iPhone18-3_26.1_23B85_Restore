@interface MRDRemoteControlContext
- (MRDRemoteControlContext)initWithContextID:(id)d originatingAppDisplayID:(id)iD;
- (NSArray)routedCommands;
- (void)addRoutedCommand:(id)command;
- (void)clearRoutedCommands;
@end

@implementation MRDRemoteControlContext

- (MRDRemoteControlContext)initWithContextID:(id)d originatingAppDisplayID:(id)iD
{
  dCopy = d;
  iDCopy = iD;
  v19.receiver = self;
  v19.super_class = MRDRemoteControlContext;
  v8 = [(MRDRemoteControlContext *)&v19 init];
  if (v8)
  {
    v9 = [dCopy copy];
    contextID = v8->_contextID;
    v8->_contextID = v9;

    v11 = [iDCopy copy];
    originatingAppDisplayID = v8->_originatingAppDisplayID;
    v8->_originatingAppDisplayID = v11;

    v13 = objc_alloc_init(NSMutableArray);
    routedCommands = v8->_routedCommands;
    v8->_routedCommands = v13;

    v15 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v16 = dispatch_queue_create("com.apple.mediaremote.remotecontrol.routedcommands", v15);
    commandQueue = v8->_commandQueue;
    v8->_commandQueue = v16;
  }

  return v8;
}

- (NSArray)routedCommands
{
  v6 = 0;
  v7 = &v6;
  v8 = 0x3032000000;
  v9 = sub_100034FD0;
  v10 = sub_1000359AC;
  v11 = 0;
  commandQueue = self->_commandQueue;
  v5[0] = _NSConcreteStackBlock;
  v5[1] = 3221225472;
  v5[2] = sub_100067148;
  v5[3] = &unk_1004B6D30;
  v5[4] = self;
  v5[5] = &v6;
  dispatch_sync(commandQueue, v5);
  v3 = v7[5];
  _Block_object_dispose(&v6, 8);

  return v3;
}

- (void)addRoutedCommand:(id)command
{
  commandCopy = command;
  commandQueue = self->_commandQueue;
  v7[0] = _NSConcreteStackBlock;
  v7[1] = 3221225472;
  v7[2] = sub_10006722C;
  v7[3] = &unk_1004B68F0;
  v7[4] = self;
  v8 = commandCopy;
  v6 = commandCopy;
  dispatch_sync(commandQueue, v7);
}

- (void)clearRoutedCommands
{
  commandQueue = self->_commandQueue;
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_100067420;
  block[3] = &unk_1004B6D08;
  block[4] = self;
  dispatch_sync(commandQueue, block);
}

@end