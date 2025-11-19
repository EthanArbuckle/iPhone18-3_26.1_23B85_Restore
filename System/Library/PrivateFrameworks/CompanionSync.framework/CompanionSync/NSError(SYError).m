@interface NSError(SYError)
+ (id)errorWithSYError:()SYError userInfo:;
- (uint64_t)initWithSYError:()SYError userInfo:;
@end

@implementation NSError(SYError)

+ (id)errorWithSYError:()SYError userInfo:
{
  v6 = a4;
  v7 = [[a1 alloc] initWithSYError:a3 userInfo:v6];

  return v7;
}

- (uint64_t)initWithSYError:()SYError userInfo:
{
  v6 = [a4 mutableCopy];
  v7 = v6;
  if (v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:1];
  }

  v9 = v8;

  v10 = *MEMORY[0x1E696A578];
  v11 = [v9 objectForKeyedSubscript:*MEMORY[0x1E696A578]];

  if (!v11)
  {
    if (a3 <= 1006)
    {
      if (a3 <= 1002)
      {
        switch(a3)
        {
          case -128:
            v12 = @"Operation was canceled";
            break;
          case 1001:
            v12 = @"Waiting for Full Sync";
            break;
          case 1002:
            v12 = @"Session ID mismatch";
            break;
          default:
            goto LABEL_51;
        }
      }

      else if (a3 > 1004)
      {
        if (a3 == 1005)
        {
          v12 = @"Initial full sync must happen first";
        }

        else
        {
          v12 = @"Deletions are not permitted for this client.";
        }
      }

      else if (a3 == 1003)
      {
        v12 = @"Snsseih packet lost";
      }

      else
      {
        v12 = @"Sender died";
      }
    }

    else
    {
      switch(a3)
      {
        case 2001:
          v12 = @"The receiver has not completed its setup.";
          break;
        case 2002:
          v12 = @"The receiver is already running.";
          break;
        case 2003:
          v12 = @"This operation cannot complete until pairing is completed.";
          break;
        case 2004:
          v12 = @"This message is part of a session, but that session doesn't appear to exist.";
          break;
        case 2005:
          v12 = @"The receiver already has a session in progress, and does not believe it should cancel that one to take this message.";
          break;
        case 2006:
          v12 = @"The received message's session ID does not match the ID of the currently active session";
          break;
        case 2007:
          v12 = @"The transaction timed out.";
          break;
        case 2008:
          v12 = @"This feature is not supported by this client.";
          break;
        case 2009:
          v12 = @"The SYSession is not currently running. Either it has not been started or it has completed.";
          break;
        case 2010:
          v12 = @"The SYSession is currently starting or restarting, and cannot perform the requested operation.";
          break;
        case 2011:
          v12 = @"The SYSession is not in the correct state to handle this message.";
          break;
        case 2012:
          v12 = @"One or more sync batches failed to be delivered or acknowledged.";
          break;
        case 2013:
          v12 = @"There is no data available for the given session.";
          break;
        case 2014:
          v12 = @"A reset sync was sent to a master device from a slave. This is not supported.";
          break;
        case 2015:
          v12 = @"The received message was not recognized.";
          break;
        case 2016:
          v12 = @"The received message could not be deserialized, and may have become corrupted.";
          break;
        case 2017:
          v12 = @"The system could not generate a sync message; some data was unavailable.";
          break;
        case 2018:
          [v9 setObject:@"The system tried to switch protocols on the fly forKeyedSubscript:{but failed.", v10}];
          v13 = *MEMORY[0x1E696A598];
          v12 = @"Retry the operation immediately -- the SYService should be able to start a new session correctly. It's the internal swap-stuff-around that's failed.";
          v14 = v9;
          goto LABEL_50;
        case 2019:
          v12 = @"The message was dropped due to a device switch.";
          break;
        case 2020:
          v12 = @"A delegate object needs to implement an optional method to perform the requested action.";
          break;
        case 2021:
          v12 = @"The session was terminated due to a device switch.";
          break;
        case 2022:
          v12 = @"The session was canceled to make way for a requested reset sync.";
          break;
        case 2023:
          v12 = @"The session was canceled due to losing in a collision; the winning session will begin momentarily.";
          break;
        case 2024:
          v12 = @"A reset request was sent to a slave device, which is invalid.";
          break;
        default:
          if (a3 == 1007)
          {
            v12 = @"There is a full-sync pending; please terminate this delta sync.";
          }

          else
          {
            if (a3 != 1008)
            {
              goto LABEL_51;
            }

            v12 = @"No peer device is connected or available at this time.";
          }

          break;
      }
    }

    v14 = v9;
    v13 = v10;
LABEL_50:
    [v14 setObject:v12 forKeyedSubscript:v13];
  }

LABEL_51:
  v15 = [a1 initWithDomain:@"SYErrorDomain" code:a3 userInfo:v9];

  return v15;
}

@end