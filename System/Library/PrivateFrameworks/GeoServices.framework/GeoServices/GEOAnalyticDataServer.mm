@interface GEOAnalyticDataServer
- (BOOL)handleIncomingMessage:(id)message withObject:(id)object fromPeer:(id)peer signpostId:(unint64_t)id;
- (GEOAnalyticDataServer)initWithDaemon:(id)daemon;
- (void)readNetEventDataWithMessage:(id)message;
@end

@implementation GEOAnalyticDataServer

- (BOOL)handleIncomingMessage:(id)message withObject:(id)object fromPeer:(id)peer signpostId:(unint64_t)id
{
  messageCopy = message;
  objectCopy = object;
  peerCopy = peer;
  if (sub_100001334(messageCopy) == 1599)
  {
    if (sub_100001B78(peerCopy, objectCopy, @"analyticdata", messageCopy, &off_100089018, 0))
    {
      v13 = [[GEOMessage alloc] initWithXPCMessage:objectCopy peer:peerCopy];
      v14 = v13;
      v15 = v13 != 0;
      if (v13)
      {
        [v13 setSignpostId:id];
        [(GEOAnalyticDataServer *)self readNetEventDataWithMessage:v14];
      }
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 0;
  }

  return v15;
}

- (void)readNetEventDataWithMessage:(id)message
{
  messageCopy = message;
  userInfo = [messageCopy userInfo];
  v4 = [userInfo objectForKeyedSubscript:@"day"];

  if (v4)
  {
    v5 = +[GEOAnalyticsDataService sharedService];
    v6 = [v5 networkEventFileDescriptorForRepresentativeDate:v4];

    if ((v6 & 0x80000000) == 0)
    {
      empty = xpc_dictionary_create_empty();
      xpc_dictionary_set_fd(empty, "fd", v6);
      [messageCopy sendReplyWithXPCUserInfo:empty];
      close(v6);
      goto LABEL_7;
    }

    v8 = -8;
  }

  else
  {
    v8 = -10;
  }

  empty = [NSError GEOErrorWithCode:v8];
  v9 = [NSDictionary _geo_replyDictionaryForError:empty key:@"err"];
  [messageCopy sendReply:v9];

LABEL_7:
}

- (GEOAnalyticDataServer)initWithDaemon:(id)daemon
{
  v4.receiver = self;
  v4.super_class = GEOAnalyticDataServer;
  return [(GEOAnalyticDataServer *)&v4 initWithDaemon:daemon];
}

@end