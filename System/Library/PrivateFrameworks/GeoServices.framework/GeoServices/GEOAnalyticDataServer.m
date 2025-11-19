@interface GEOAnalyticDataServer
- (BOOL)handleIncomingMessage:(id)a3 withObject:(id)a4 fromPeer:(id)a5 signpostId:(unint64_t)a6;
- (GEOAnalyticDataServer)initWithDaemon:(id)a3;
- (void)readNetEventDataWithMessage:(id)a3;
@end

@implementation GEOAnalyticDataServer

- (BOOL)handleIncomingMessage:(id)a3 withObject:(id)a4 fromPeer:(id)a5 signpostId:(unint64_t)a6
{
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (sub_100001334(v10) == 1599)
  {
    if (sub_100001B78(v12, v11, @"analyticdata", v10, &off_100089018, 0))
    {
      v13 = [[GEOMessage alloc] initWithXPCMessage:v11 peer:v12];
      v14 = v13;
      v15 = v13 != 0;
      if (v13)
      {
        [v13 setSignpostId:a6];
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

- (void)readNetEventDataWithMessage:(id)a3
{
  v10 = a3;
  v3 = [v10 userInfo];
  v4 = [v3 objectForKeyedSubscript:@"day"];

  if (v4)
  {
    v5 = +[GEOAnalyticsDataService sharedService];
    v6 = [v5 networkEventFileDescriptorForRepresentativeDate:v4];

    if ((v6 & 0x80000000) == 0)
    {
      empty = xpc_dictionary_create_empty();
      xpc_dictionary_set_fd(empty, "fd", v6);
      [v10 sendReplyWithXPCUserInfo:empty];
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
  [v10 sendReply:v9];

LABEL_7:
}

- (GEOAnalyticDataServer)initWithDaemon:(id)a3
{
  v4.receiver = self;
  v4.super_class = GEOAnalyticDataServer;
  return [(GEOAnalyticDataServer *)&v4 initWithDaemon:a3];
}

@end