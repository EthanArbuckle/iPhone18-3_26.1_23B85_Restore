@interface _MFDAMessageFetchAttachmentConsumer
- (_MFDAMessageFetchAttachmentConsumer)initWithActivityMonitor:(id)monitor;
- (void)attachmentFetchCompletedWithStatus:(int64_t)status forAttachmentNamed:(id)named ofMessageWithServerID:(id)d dataWasBase64:(BOOL)base64 sentBytesCount:(unint64_t)count receivedBytesCount:(unint64_t)bytesCount;
- (void)consumeData:(id)data ofContentType:(id)type forAttachmentNamed:(id)named ofMessageWithServerID:(id)d;
@end

@implementation _MFDAMessageFetchAttachmentConsumer

- (void)consumeData:(id)data ofContentType:(id)type forAttachmentNamed:(id)named ofMessageWithServerID:(id)d
{
  dataCopy = data;
  progressFilter = [(_MFDAMessageFetchAttachmentConsumer *)self progressFilter];
  [progressFilter appendData:dataCopy];

  self->_accumulatedLength += [dataCopy length];
  if ([(_MFDAMessageFetchAttachmentConsumer *)self expectedLength]!= 0x7FFFFFFFFFFFFFFFLL && [(_MFDAMessageFetchAttachmentConsumer *)self expectedLength])
  {
    [(MFActivityMonitor *)self->_monitor setPercentDone:self->_accumulatedLength / [(_MFDAMessageFetchAttachmentConsumer *)self expectedLength]];
  }
}

- (void)attachmentFetchCompletedWithStatus:(int64_t)status forAttachmentNamed:(id)named ofMessageWithServerID:(id)d dataWasBase64:(BOOL)base64 sentBytesCount:(unint64_t)count receivedBytesCount:(unint64_t)bytesCount
{
  [(MFActivityMonitor *)self->_monitor recordBytesWritten:count, named, d];
  [(MFActivityMonitor *)self->_monitor recordBytesRead:bytesCount];
  self->_fetchSucceeded = status == 2;
  self->_dataWasBase64 = base64;

  [(MFDAMailAccountConsumer *)self setDone:1];
}

- (_MFDAMessageFetchAttachmentConsumer)initWithActivityMonitor:(id)monitor
{
  monitorCopy = monitor;
  v9.receiver = self;
  v9.super_class = _MFDAMessageFetchAttachmentConsumer;
  v6 = [(MFDAMailAccountConsumer *)&v9 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->_monitor, monitor);
  }

  return v7;
}

@end