@interface MFIMAPConnection
+ (OS_os_log)log;
+ (void)initialize;
+ (void)setReadSizeParameters;
- (BOOL)_connectSocketUsingAccount:(id)account;
- (BOOL)_doBasicConnectionUsingAccount:(id)account;
- (BOOL)_sendMailboxCommand:(int64_t)command withArguments:(id)arguments;
- (BOOL)_tryConnectionUsingAccount:(id)account;
- (BOOL)appendData:(id)data toMailboxNamed:(id)named flags:(id)flags dateReceived:(id)received appendInfo:(id *)info error:(id *)error;
- (BOOL)appendData:(id)data toMailboxNamed:(id)named flags:(id)flags dateReceived:(id)received newMessageInfo:(id *)info;
- (BOOL)authenticateUsingAccount:(id)account;
- (BOOL)authenticateUsingAccount:(id)account authenticator:(id)authenticator;
- (BOOL)closeAndLogout;
- (BOOL)connectUsingAccount:(id)account;
- (BOOL)copyUIDs:(id)ds toMailboxNamed:(id)named copyInfo:(id *)info error:(id *)error;
- (BOOL)createMailbox:(id)mailbox;
- (BOOL)deleteMailbox:(id)mailbox;
- (BOOL)deleteMessagesOlderThanNumberOfDays:(int)days;
- (BOOL)expunge;
- (BOOL)expungeUIDs:(id)ds;
- (BOOL)loginWithAccount:(id)account password:(id)password;
- (BOOL)logout;
- (BOOL)moveUIDs:(id)ds toMailboxNamed:(id)named copyInfo:(id *)info error:(id *)error;
- (BOOL)performCustomCommand:(id)command withArguments:(id)arguments;
- (BOOL)renameMailbox:(id)mailbox toMailbox:(id)toMailbox;
- (BOOL)selectMailbox:(id)mailbox withAccount:(id)account;
- (BOOL)sendResponsesForCommand:(id)command toQueue:(id)queue;
- (BOOL)sendResponsesForCondStoreFlagFetchForUIDs:(id)ds withSequenceIdentifier:(id *)identifier toQueue:(id)queue;
- (BOOL)sendResponsesForUIDFetchForUIDs:(id)ds fields:(id)fields toQueue:(id)queue;
- (BOOL)sendResponsesForUIDs:(id)ds fields:(id)fields flagSearchResults:(id)results toQueue:(id)queue;
- (BOOL)sendSkeletonResponsesForUIDs:(id)ds includeTo:(BOOL)to toQueue:(id)queue;
- (BOOL)sendUidAndFlagResponsesForUIDs:(id)ds sequenceIdentifierProvider:(id)provider flagSearchResults:(id)results toQueue:(id)queue;
- (BOOL)sendUidResponsesForSearchArguments:(id)arguments toQueue:(id)queue;
- (BOOL)startTLSForAccount:(id)account;
- (BOOL)storeFlagChange:(id)change forUIDs:(id)ds;
- (BOOL)storeFlags:(id)flags state:(BOOL)state forMessageSet:(id)set;
- (BOOL)storeGmailLabels:(id)labels state:(BOOL)state forUIDs:(id)ds;
- (BOOL)supportsCapability:(int64_t)capability;
- (MFIMAPCommandPipeline)fetchPipeline;
- (MFIMAPConnection)init;
- (MFIMAPConnectionDelegate)delegate;
- (MFIMAPDownloadCache)downloadCache;
- (NSString)debugDescription;
- (NSString)ef_publicDescription;
- (id)_connectionLogPrefix;
- (id)_connectionStateDescription;
- (id)_copyNextServerResponseForCommand:(id)command;
- (id)_copyNextTaggedOrContinuationResponseForCommand:(id)command;
- (id)_dictionaryFromSourceUIDs:(id)ds destinationUIDs:(id)iDs;
- (id)_doListCommand:(int64_t)command withReference:(id)reference mailboxName:(id)name options:(int64_t)options getSpecialUse:(BOOL)use statusDataItems:(id)items statusEntriesByMailbox:(id *)mailbox;
- (id)_doNamespaceCommand;
- (id)_errorForResponse:(id)response commandParams:(id)params;
- (id)_fetchArgumentForMessageSkeletonsWithAllHeaders;
- (id)_indexSetForIMAPInlineSet:(id)set;
- (id)_logStringForCommand:(id)command;
- (id)_logStringForIDs:(id)ds;
- (id)_publicDescriptionForSearchString:(id)string;
- (id)_readDataOfLength:(int64_t)length;
- (id)_responseFromSendingCommand:(id)command andPossiblyCreateMailbox:(id)mailbox;
- (id)_responseFromSendingCommands:(id)commands;
- (id)_searchUidsForMessageIDs:(id)ds excludeDeleted:(BOOL)deleted;
- (id)_serverErrorForAccount:(id)account response:(id)response command:(id)command;
- (id)capabilities;
- (id)copyArgumentForSearchTerm:(id)term;
- (id)copyDiagnosticInformation;
- (id)copyInfoForMessageInfo:(id)info;
- (id)eSearchIDSet:(id)set areMessageSequenceNumbers:(BOOL)numbers arguments:(id)arguments success:(BOOL *)success returning:(int64_t)returning;
- (id)fetchMessageIdsForUids:(id)uids;
- (id)messageSetForNumbers:(id)numbers;
- (id)messageSetForRange:(id)range;
- (id)messageSetForUIDs:(id)ds;
- (id)messageSetForUIDs:(id)ds maxTokens:(unint64_t)tokens remainder:(id *)remainder;
- (id)parenthesizedStringWithObjects:(id)objects;
- (id)parseIndexSetFromSequenceSet:(id)set;
- (id)searchIDSet:(id)set forTerms:(id)terms success:(BOOL *)success;
- (id)searchUIDs:(id)ds withFlagRequests:(id)requests;
- (id)searchUidSet:(id)set forTerms:(id)terms success:(BOOL *)success;
- (id)separatorChar;
- (id)serverPathPrefix;
- (id)subscribedListingForMailbox:(id)mailbox options:(int64_t)options;
- (int)fillLiteralBuffer:(char *)buffer count:(unint64_t)count dataLength:(unint64_t)length nonSynchronizingLiteral:(BOOL *)literal;
- (int64_t)_doIMAPLoginForAccount:(id)account quotedUsername:(id)username password:(id)password;
- (int64_t)connectionState;
- (unint64_t)_sendCommands:(id)commands response:(id *)response;
- (unint64_t)countForSearchOfIDSet:(id)set forTerms:(id)terms success:(BOOL *)success;
- (unint64_t)countForSearchOfUidSet:(id)set forTerms:(id)terms success:(BOOL *)success;
- (unsigned)readBufferSize;
- (void)_addCapabilities:(id)capabilities;
- (void)_clearCapabilities;
- (void)_enableCompressionIfSupported;
- (void)_fetchCapabilities;
- (void)_handleBytesAvailableInternal;
- (void)_sendApplePushForAccountIfSupported:(id)supported;
- (void)_sendClientInfoIfSupported;
- (void)_updateCapabilitiesForAccount:(id)account withAuthenticationResponse:(id)response;
- (void)_updateSearchCapabilityWithAccount:(id)account;
- (void)close;
- (void)dealloc;
- (void)didFinishCommands:(id)commands;
- (void)disconnectAndNotifyDelegate:(BOOL)delegate;
- (void)fetchStatusForMailboxes:(id)mailboxes args:(id)args;
- (void)finishIdle;
- (void)handleBytesAvailable;
- (void)locked_finishIdle;
- (void)locked_scheduleIdle;
- (void)locked_scheduleIdleResetAfterDelay:(double)delay;
- (void)locked_startIdle;
- (void)noop;
- (void)parseESearchResponseWithContext:(id)context;
- (void)parseSearchReturn:(id)return;
- (void)scheduleIdleReset;
- (void)setDelegate:(id)delegate;
- (void)setReadBufferSizeFromElapsedTime:(double)time bytesRead:(unint64_t)read;
- (void)unselect;
@end

@implementation MFIMAPConnection

- (BOOL)sendResponsesForCondStoreFlagFetchForUIDs:(id)ds withSequenceIdentifier:(id *)identifier toQueue:(id)queue
{
  v53 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  queueCopy = queue;
  selfCopy = self;
  v30 = dsCopy;
  v33 = [(MFIMAPConnection *)self messageSetForNumbers:dsCopy];
  v9 = MEMORY[0x1E696AEC0];
  if (identifier && [*identifier length])
  {
    v10 = *identifier;
  }

  else
  {
    v10 = @"0";
  }

  [v9 stringWithFormat:@"(CHANGEDSINCE %@)", v10];
  v51[0] = v33;
  v52 = v51[1] = @"(FLAGS)";
  v31 = v52;
  v34 = [MEMORY[0x1E695DEC8] arrayWithObjects:v51 count:3];
  v36 = [[_MFIMAPCommandParameters alloc] initWithCommand:21 arguments:v34];
  v50 = v36;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v50 count:1];
  identifierCopy = identifier;
  v35 = [(MFIMAPConnection *)self _responseFromSendingCommands:v11];

  v12 = v36;
  responseType = [v35 responseType];
  if (responseType == 2)
  {
    v45 = 0u;
    v46 = 0u;
    v43 = 0u;
    v44 = 0u;
    obj = [(_MFIMAPCommandParameters *)v36 untaggedResponses];
    v14 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (!v14)
    {

      goto LABEL_27;
    }

    v15 = 0;
    v16 = 0;
    v17 = *v44;
    do
    {
      for (i = 0; i != v14; ++i)
      {
        if (*v44 != v17)
        {
          objc_enumerationMutation(obj);
        }

        v19 = *(*(&v43 + 1) + 8 * i);
        if ([v19 responseType] == 17)
        {
          fetchResults = [v19 fetchResults];
          v41 = 0u;
          v42 = 0u;
          v39 = 0u;
          v40 = 0u;
          v21 = fetchResults;
          v22 = [v21 countByEnumeratingWithState:&v39 objects:v48 count:16];
          if (v22)
          {
            v23 = *v40;
            do
            {
              for (j = 0; j != v22; ++j)
              {
                if (*v40 != v23)
                {
                  objc_enumerationMutation(v21);
                }

                modSequenceNumber = [*(*(&v39 + 1) + 8 * j) modSequenceNumber];
                v15 |= modSequenceNumber > v16;
                if (modSequenceNumber > v16)
                {
                  v16 = modSequenceNumber;
                }
              }

              v22 = [v21 countByEnumeratingWithState:&v39 objects:v48 count:16];
            }

            while (v22);
          }

          [queueCopy addItem:v19];
        }
      }

      v14 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
    }

    while (v14);

    v12 = v36;
    responseType = 2;
    if (((identifierCopy != 0) & v15) == 1)
    {
      *identifierCopy = [MEMORY[0x1E696AEC0] stringWithFormat:@"%llu", v16];
LABEL_27:
      v12 = v36;
      responseType = 2;
    }
  }

  v47 = v12;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v47 count:1];
  [(MFIMAPConnection *)selfCopy didFinishCommands:v26];

  v27 = *MEMORY[0x1E69E9840];
  return responseType == 2;
}

- (id)eSearchIDSet:(id)set areMessageSequenceNumbers:(BOOL)numbers arguments:(id)arguments success:(BOOL *)success returning:(int64_t)returning
{
  v39[1] = *MEMORY[0x1E69E9840];
  setCopy = set;
  argumentsCopy = arguments;
  v11 = [objc_allocWithZone(MEMORY[0x1E695DF70]) initWithCapacity:{objc_msgSend(argumentsCopy, "count") + 2 * (setCopy != 0)}];
  v12 = [[_MFIMAPCommandParameters alloc] initWithCommand:24 arguments:v11];
  if (!returning)
  {
    __assert_rtn("[MFIMAPConnection(ESearch) eSearchIDSet:areMessageSequenceNumbers:arguments:success:returning:]", "ESearch.m", 27, "returning && Should have at least one return request on an esearch command.");
  }

  [v11 addObject:@"RETURN"];
  v13 = objc_msgSend(@"("), "mutableCopy";
  v14 = v13;
  if (returning)
  {
    [v13 appendString:@"MIN"];
    if ((returning & 2) == 0)
    {
LABEL_10:
      if ((returning & 4) == 0)
      {
LABEL_13:
        if ((returning & 8) == 0)
        {
          goto LABEL_16;
        }

        [v14 appendString:@" "];
        goto LABEL_15;
      }

      [v14 appendString:@" "];
LABEL_12:
      [v14 appendString:@"ALL"];
      goto LABEL_13;
    }

    [v14 appendString:@" "];
LABEL_9:
    [v14 appendString:@"MAX"];
    goto LABEL_10;
  }

  if ((returning & 2) != 0)
  {
    goto LABEL_9;
  }

  if ((returning & 4) != 0)
  {
    goto LABEL_12;
  }

  if ((returning & 8) != 0)
  {
LABEL_15:
    [v14 appendString:@"COUNT"];
  }

LABEL_16:
  [v14 appendString:@""]);
  [v11 addObject:v14];
  if (setCopy)
  {
    if (!numbers)
    {
      [v11 addObject:@"UID"];
    }

    [v11 addObject:setCopy];
  }

  [v11 addObjectsFromArray:argumentsCopy];
  v39[0] = v12;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v39 count:1];
  v32 = [(MFIMAPConnection *)self _responseFromSendingCommands:v15];

  responseType = [v32 responseType];
  if (success)
  {
    *success = responseType == 2;
  }

  if (responseType == 2 && (-[_MFIMAPCommandParameters untaggedResponses](v12, "untaggedResponses"), v17 = objc_claimAutoreleasedReturnValue(), v18 = [v17 count], v17, v18))
  {
    v19 = 0;
    v20 = 0;
    do
    {
      untaggedResponses = [(_MFIMAPCommandParameters *)v12 untaggedResponses];
      v22 = [untaggedResponses objectAtIndex:v20];

      if ([v22 responseType] == 20)
      {
        keyValuePairs = [v22 keyValuePairs];

        v24 = [keyValuePairs objectForKey:@"IMAPESearchTagKey"];
        intValue = [v24 intValue];
        LOBYTE(intValue) = [(_MFIMAPCommandParameters *)v12 sequenceNumber]== intValue;

        if (intValue)
        {
          v19 = keyValuePairs;
        }

        else
        {
          v26 = MFLogGeneral();
          if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
          {
            *buf = 0;
            _os_log_impl(&dword_1B0389000, v26, OS_LOG_TYPE_INFO, "Got a response, but it was not for our tag.  Throwing out the results.", buf, 2u);
          }

          v19 = 0;
        }

        untaggedResponses2 = [(_MFIMAPCommandParameters *)v12 untaggedResponses];
        [untaggedResponses2 removeObjectAtIndex:v20];

        --v18;
      }

      else
      {
        ++v20;
      }
    }

    while (v20 < v18);
  }

  else
  {
    v19 = 0;
  }

  v38 = v12;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:{1, v32}];
  [(MFIMAPConnection *)self didFinishCommands:v28];

  v29 = v19;
  v30 = *MEMORY[0x1E69E9840];
  return v19;
}

- (id)parseIndexSetFromSequenceSet:(id)set
{
  setCopy = set;
  v4 = objc_alloc_init(MEMORY[0x1E696AD50]);
  v5 = [objc_alloc(MEMORY[0x1E696AE88]) initWithString:setCopy];
  v11 = 0xAAAAAAAAAAAAAAAALL;
  while (([v5 isAtEnd] & 1) == 0 && objc_msgSend(v5, "scanInteger:", &v11))
  {
    if ([v5 isAtEnd])
    {
      [v4 addIndex:v11];
    }

    else
    {
      scanLocation = [v5 scanLocation];
      v7 = [setCopy characterAtIndex:scanLocation];
      if (v7 == 44)
      {
        [v4 addIndex:v11];
LABEL_11:
        [v5 setScanLocation:scanLocation + 1];
      }

      else if (v7 == 58)
      {
        [v5 setScanLocation:scanLocation + 1];
        v10 = 0xAAAAAAAAAAAAAAAALL;
        [v5 scanInteger:&v10];
        [v4 addIndexesInRange:?];
        if (([v5 isAtEnd] & 1) == 0)
        {
          scanLocation = [v5 scanLocation];
          goto LABEL_11;
        }
      }

      else
      {
        v8 = MFLogGeneral();
        if (os_log_type_enabled(v8, OS_LOG_TYPE_INFO))
        {
          LOWORD(v10) = 0;
          _os_log_impl(&dword_1B0389000, v8, OS_LOG_TYPE_INFO, "Got invalid value in sequence set", &v10, 2u);
        }
      }
    }
  }

  return v4;
}

- (void)parseSearchReturn:(id)return
{
  for (i = return; ; [i parseSpace])
  {
    v4 = [i end];
    if (v4 <= [i start])
    {
      break;
    }

    if ([i match:"MIN"])
    {
      if (([i parseSpace] & 1) == 0)
      {
        [i emitWarning:@"Expected space"];
      }

      copyNumber = [i copyNumber];
      if (!copyNumber)
      {
        [i emitError:@"Expected number for minimum result"];
      }

      response = [i response];
      [response setValue:copyNumber forKey:@"IMAPESearchMinKey"];
LABEL_25:

      continue;
    }

    if ([i match:"MAX"])
    {
      if (([i parseSpace] & 1) == 0)
      {
        [i emitWarning:@"Expected space"];
      }

      copyNumber = [i copyNumber];
      if (!copyNumber)
      {
        [i emitError:@"Expected number for maximum result"];
      }

      response = [i response];
      [response setValue:copyNumber forKey:@"IMAPESearchMaxKey"];
      goto LABEL_25;
    }

    if ([i match:"ALL"])
    {
      if (([i parseSpace] & 1) == 0)
      {
        [i emitWarning:@"Expected space"];
      }

      copyNumber = [i copyMessageSet];
      response = [(MFIMAPConnection *)self parseIndexSetFromSequenceSet:copyNumber];
      response2 = [i response];
      [response2 setValue:response forKey:@"IMAPESearchAllKey"];

      goto LABEL_25;
    }

    if ([i match:"COUNT"])
    {
      if (([i parseSpace] & 1) == 0)
      {
        [i emitWarning:@"Expected space"];
      }

      copyNumber = [i copyNumber];
      if (!copyNumber)
      {
        [i emitError:@"Expected number for count result"];
      }

      response = [i response];
      [response setValue:copyNumber forKey:@"IMAPESearchCountKey"];
      goto LABEL_25;
    }

    [i emitError:@"Did not find a valid search return."];
  }
}

- (void)parseESearchResponseWithContext:(id)context
{
  contextCopy = context;
  if (([contextCopy parseSpace] & 1) == 0)
  {
    [contextCopy emitWarning:@"Expected space"];
  }

  if ([contextCopy match:"(")]
  {
    if ([contextCopy match:"TAG"])
    {
      if (([contextCopy parseSpace] & 1) == 0)
      {
        [contextCopy emitWarning:@"Expected space"];
      }

      copyQuotedString = [contextCopy copyQuotedString];
      response = [contextCopy response];
      [response setValue:copyQuotedString forKey:@"IMAPESearchTagKey"];
    }

    if (([contextCopy match:"]") & 1) == 0)
    {
      [contextCopy emitError:@"Expected right paren"];
    }
  }

  if ([contextCopy parseSpace])
  {
    if ([contextCopy match:"UID"])
    {
      if (([contextCopy parseSpace] & 1) == 0)
      {
        v6 = [contextCopy end];
        if (v6 != [contextCopy start])
        {
          [contextCopy emitWarning:@"Expected space"];
        }
      }
    }

    [(MFIMAPConnection *)self parseSearchReturn:contextCopy];
  }
}

+ (OS_os_log)log
{
  block[0] = MEMORY[0x1E69E9820];
  block[1] = 3221225472;
  block[2] = __23__MFIMAPConnection_log__block_invoke;
  block[3] = &__block_descriptor_40_e5_v8__0l;
  block[4] = self;
  if (log_onceToken_1 != -1)
  {
    dispatch_once(&log_onceToken_1, block);
  }

  v2 = log_log_1;

  return v2;
}

void __23__MFIMAPConnection_log__block_invoke(uint64_t a1)
{
  v2 = [*MEMORY[0x1E69B17F0] UTF8String];
  v5 = NSStringFromClass(*(a1 + 32));
  v3 = os_log_create(v2, [v5 UTF8String]);
  v4 = log_log_1;
  log_log_1 = v3;
}

+ (void)initialize
{
  if (!sIMAPNeedsQuoteCharacterSet)
  {
    v3 = *MEMORY[0x1E695E480];
    Mutable = CFCharacterSetCreateMutable(*MEMORY[0x1E695E480]);
    v8.location = 32;
    v8.length = 94;
    CFCharacterSetAddCharactersInRange(Mutable, v8);
    CFCharacterSetInvert(Mutable);
    CFCharacterSetAddCharactersInString(Mutable, @"(){ %*\\"");
    sIMAPNeedsQuoteCharacterSet = CFCharacterSetCreateCopy(v3, Mutable);
    CFRelease(Mutable);
  }

  if (!sIMAPNeedsLiteralCharacterSet)
  {
    v5 = *MEMORY[0x1E695E480];
    v6 = CFCharacterSetCreateMutable(*MEMORY[0x1E695E480]);
    v9.location = 1;
    v9.length = 126;
    CFCharacterSetAddCharactersInRange(v6, v9);
    CFCharacterSetInvert(v6);
    CFCharacterSetAddCharactersInString(v6, @"\r\n");
    sIMAPNeedsLiteralCharacterSet = CFCharacterSetCreateCopy(v5, v6);
    CFRelease(v6);
  }

  [self setReadSizeParameters];
}

- (MFIMAPConnection)init
{
  v8.receiver = self;
  v8.super_class = MFIMAPConnection;
  v2 = [(MFConnection *)&v8 init];
  if (v2)
  {
    v3 = [objc_alloc(MEMORY[0x1E695DF88]) initWithCapacity:4096];
    data = v2->_data;
    v2->_data = v3;

    v2->_expirationTime = 0.0;
    socket = v2->super._socket;
    v2->super._socket = 0;

    *(v2 + 152) &= 0xF8u;
    selectedMailbox = v2->_selectedMailbox;
    v2->_selectedMailbox = 0;
  }

  return v2;
}

- (void)dealloc
{
  [(EFCancelable *)self->_idleSubscriptionCancelable cancel];
  v3.receiver = self;
  v3.super_class = MFIMAPConnection;
  [(MFConnection *)&v3 dealloc];
}

- (id)copyDiagnosticInformation
{
  [(MFIMAPConnection *)self mf_lock];
  v15.receiver = self;
  v15.super_class = MFIMAPConnection;
  copyDiagnosticInformation = [(MFConnection *)&v15 copyDiagnosticInformation];
  v4 = [copyDiagnosticInformation mutableCopy];
  selfCopy = self;
  v6 = selfCopy;
  v7 = *(selfCopy + 64) | (*(selfCopy + 130) << 16);
  if ((*(selfCopy + 64) & 0x20) != 0)
  {
    currentDevice = [MEMORY[0x1E699B7B0] currentDevice];
    v10 = [currentDevice isPlatform:2];

    if (v10)
    {
      v8 = @"no";
    }

    else
    {
      v8 = @"yes";
    }
  }

  else
  {

    v8 = @"no";
  }

  [v4 appendFormat:@"    supports IDLE: %@\n", v8];
  isIdle = [(MFIMAPConnection *)v6 isIdle];
  idleCommandSequenceNumber = [(MFIMAPConnection *)v6 idleCommandSequenceNumber];
  if (isIdle)
  {
    v13 = @"yes";
  }

  else
  {
    v13 = @"no";
  }

  [v4 appendFormat:@"    using IDLE: %@ (seq=%lu)\n", v13, idleCommandSequenceNumber];
  [(MFIMAPConnection *)v6 mf_unlock];

  return v4;
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->_delegate);
  if (WeakRetained != obj)
  {
    if ((*&self->_delegateState & 0x40) != 0)
    {
      [WeakRetained willRemoveDelegation:self];
    }

    *&self->_delegateState = *&self->_delegateState & 0xFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v5 = 2;
    }

    else
    {
      v5 = 0;
    }

    *&self->_delegateState = *&self->_delegateState & 0xFD | v5;
    if (objc_opt_respondsToSelector())
    {
      v6 = 8;
    }

    else
    {
      v6 = 0;
    }

    *&self->_delegateState = *&self->_delegateState & 0xF7 | v6;
    if (objc_opt_respondsToSelector())
    {
      v7 = 16;
    }

    else
    {
      v7 = 0;
    }

    *&self->_delegateState = *&self->_delegateState & 0xEF | v7;
    if (objc_opt_respondsToSelector())
    {
      v8 = 32;
    }

    else
    {
      v8 = 0;
    }

    *&self->_delegateState = *&self->_delegateState & 0xDF | v8;
    if (objc_opt_respondsToSelector())
    {
      v9 = 64;
    }

    else
    {
      v9 = 0;
    }

    *&self->_delegateState = *&self->_delegateState & 0xBF | v9;
    if (objc_opt_respondsToSelector())
    {
      v10 = 0x80;
    }

    else
    {
      v10 = 0;
    }

    *&self->_delegateState = v10 & 0x80 | *&self->_delegateState & 0x7F;
    objc_storeWeak(&self->_delegate, obj);
  }
}

- (MFIMAPCommandPipeline)fetchPipeline
{
  [(MFIMAPConnection *)self mf_lock];
  fetchPipeline = self->_fetchPipeline;
  if (!fetchPipeline)
  {
    v4 = objc_alloc_init(MFIMAPCommandPipeline);
    v5 = self->_fetchPipeline;
    self->_fetchPipeline = v4;

    fetchPipeline = self->_fetchPipeline;
  }

  v6 = fetchPipeline;
  [(MFIMAPConnection *)self mf_unlock];

  return v6;
}

- (MFIMAPDownloadCache)downloadCache
{
  [(MFIMAPConnection *)self mf_lock];
  downloadCache = self->_downloadCache;
  if (!downloadCache)
  {
    v4 = objc_alloc_init(MFIMAPDownloadCache);
    v5 = self->_downloadCache;
    self->_downloadCache = v4;

    downloadCache = self->_downloadCache;
  }

  v6 = downloadCache;
  [(MFIMAPConnection *)self mf_unlock];

  return v6;
}

- (void)_clearCapabilities
{
  capabilities = self->_capabilities;
  self->_capabilities = 0;

  *(self + 130) = 0;
  *(self + 64) = 0;
}

- (void)_addCapabilities:(id)capabilities
{
  v24 = *MEMORY[0x1E69E9840];
  capabilitiesCopy = capabilities;
  if (capabilitiesCopy)
  {
    capabilities = self->_capabilities;
    if (!capabilities)
    {
      v6 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(capabilitiesCopy, "count")}];
      v7 = self->_capabilities;
      self->_capabilities = v6;

      capabilities = self->_capabilities;
    }

    [(NSMutableSet *)capabilities addObjectsFromArray:capabilitiesCopy];
    v8 = 0;
    v20 = xmmword_1E7AA2A00;
    v21 = *&off_1E7AA2A10;
    v22 = xmmword_1E7AA2A20;
    v23 = off_1E7AA2A30;
    v16 = xmmword_1E7AA29C0;
    v17 = *&off_1E7AA29D0;
    v18 = xmmword_1E7AA29E0;
    v19 = *&off_1E7AA29F0;
    v12 = xmmword_1E7AA2980;
    v13 = *&off_1E7AA2990;
    v14 = xmmword_1E7AA29A0;
    v15 = *&off_1E7AA29B0;
    do
    {
      if ([(NSMutableSet *)self->_capabilities containsObject:*(&v12 + v8), v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23])
      {
        v9 = (1 << v8) | *(self + 64) | (*(self + 130) << 16);
        *(self + 64) |= 1 << v8;
        *(self + 130) = BYTE2(v9);
      }

      ++v8;
    }

    while (v8 != 24);
    for (i = 184; i != -8; i -= 8)
    {
    }
  }

  v11 = *MEMORY[0x1E69E9840];
}

- (void)_fetchCapabilities
{
  v17[1] = *MEMORY[0x1E69E9840];
  v3 = [[_MFIMAPCommandParameters alloc] initWithCommand:0];
  v17[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v17 count:1];
  v5 = [(MFIMAPConnection *)self _responseFromSendingCommands:v4];
  v6 = [v5 responseType] == 2;

  if (v6)
  {
    untaggedResponses = [(_MFIMAPCommandParameters *)v3 untaggedResponses];
    v8 = [untaggedResponses count];

    if (v8)
    {
      v9 = v8 - 1;
      do
      {
        untaggedResponses2 = [(_MFIMAPCommandParameters *)v3 untaggedResponses];
        v11 = [untaggedResponses2 objectAtIndex:v9];

        if ([v11 responseType] == 7)
        {
          capabilities = [v11 capabilities];
          [(MFIMAPConnection *)self _addCapabilities:capabilities];

          untaggedResponses3 = [(_MFIMAPCommandParameters *)v3 untaggedResponses];
          [untaggedResponses3 removeObjectAtIndex:v9];
        }

        --v9;
      }

      while (v9 != -1);
    }
  }

  v16 = v3;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
  [(MFIMAPConnection *)self didFinishCommands:v14];

  v15 = *MEMORY[0x1E69E9840];
}

- (void)_sendClientInfoIfSupported
{
  v3 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  _os_log_debug_impl(&dword_1B0389000, v0, OS_LOG_TYPE_DEBUG, "sending ID command: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)_sendApplePushForAccountIfSupported:(id)supported
{
  v119 = *MEMORY[0x1E69E9840];
  supportedCopy = supported;
  v3 = MFUserAgent();
  canRegisterForAPSPush = [v3 canRegisterForAPSPush];

  if ((canRegisterForAPSPush & 1) == 0)
  {
    goto LABEL_90;
  }

  if ((32 * *(self + 152)) <= 32)
  {
    v5 = MFLogGeneral();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      goto LABEL_89;
    }

    *buf = 138412290;
    v101 = supportedCopy;
    v6 = "#aps-push not registering for push on unauthenticated connection for account %@";
    goto LABEL_5;
  }

  if (![(MFIMAPConnection *)self supportsCapability:13])
  {
    v17 = MFLogGeneral();
    if (os_log_type_enabled(v17, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v101 = supportedCopy;
      _os_log_impl(&dword_1B0389000, v17, OS_LOG_TYPE_INFO, "#aps-push connection doesn't support XAPPLEPUSHSERVICE for account %@", buf, 0xCu);
    }

    [supportedCopy serverRegisteredMailboxes:0 withTopic:0 version:-1];
    goto LABEL_90;
  }

  if (([supportedCopy shouldRegisterForPush] & 1) == 0)
  {
    v5 = MFLogGeneral();
    if (!os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
    {
      goto LABEL_89;
    }

    *buf = 138412290;
    v101 = supportedCopy;
    v6 = "#aps-push account %@ not registering for push";
LABEL_5:
    _os_log_impl(&dword_1B0389000, v5, OS_LOG_TYPE_INFO, v6, buf, 0xCu);
    goto LABEL_89;
  }

  v7 = +[MFAPSManager sharedManager];
  copyDeviceToken = [v7 copyDeviceToken];

  v76 = copyDeviceToken;
  ef_hexString = [copyDeviceToken ef_hexString];
  if (!ef_hexString)
  {
    v18 = MFLogGeneral();
    if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
    {
      *buf = 138412290;
      v101 = supportedCopy;
      _os_log_impl(&dword_1B0389000, v18, OS_LOG_TYPE_INFO, "#aps-push failed to get device token while registering for push on account %@", buf, 0xCu);
    }

    v19 = 0;
    v20 = 0;
    goto LABEL_88;
  }

  context = objc_autoreleasePoolPush();
  uniqueID = [supportedCopy uniqueID];
  mailboxNamesForPushRegistration = [supportedCopy mailboxNamesForPushRegistration];
  v90 = objc_msgSend(MEMORY[0x1E696AD60], "stringWithString:", @"(");
  v97 = 0u;
  v98 = 0u;
  v95 = 0u;
  v96 = 0u;
  obj = mailboxNamesForPushRegistration;
  v9 = [obj countByEnumeratingWithState:&v95 objects:v118 count:16];
  if (v9)
  {
    v10 = 0;
    v11 = *v96;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v96 != v11)
        {
          objc_enumerationMutation(obj);
        }

        v13 = MFIMAPStringFromMailboxName(*(*(&v95 + 1) + 8 * i));
        v14 = v13;
        if (v10)
        {
          v15 = @" ";
        }

        else
        {
          v15 = &stru_1F273A5E0;
        }

        [v90 appendFormat:@"%@%@", v15, v13];

        ++v10;
      }

      v9 = [obj countByEnumeratingWithState:&v95 objects:v118 count:16];
    }

    while (v9);
  }

  [v90 appendString:@""]);
  v16 = MFUserAgent();
  if ([v16 isMaild])
  {
    bundleIdentifier = *MEMORY[0x1E69B17F0];
  }

  else
  {
    mainBundle = [MEMORY[0x1E696AAE8] mainBundle];
    bundleIdentifier = [mainBundle bundleIdentifier];
  }

  v22 = MEMORY[0x1E695DF70];
  v108 = _IMAPCreateQuotedString(@"aps-version");
  v87 = v108;
  v23 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%d", objc_msgSend(supportedCopy, "apsVersion")];
  v109 = _IMAPCreateQuotedString(v23);
  v84 = v109;
  v24 = _IMAPCreateQuotedString(@"aps-account-id");
  v110 = v24;
  v25 = _IMAPCreateQuotedString(uniqueID);
  v111 = v25;
  v26 = _IMAPCreateQuotedString(@"aps-device-token");
  v112 = v26;
  v27 = _IMAPCreateQuotedString(ef_hexString);
  v113 = v27;
  v28 = _IMAPCreateQuotedString(@"aps-subtopic");
  v114 = v28;
  v29 = _IMAPCreateQuotedString(bundleIdentifier);
  v30 = v23;
  v115 = v29;
  v31 = _IMAPCreateQuotedString(@"mailboxes");
  v116 = v31;
  v117 = v90;
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v108 count:10];
  v80 = [v22 arrayWithArray:v32];

  apsSenderArgument = [supportedCopy apsSenderArgument];
  if (apsSenderArgument)
  {
    v33 = MFLogGeneral();
    if (os_log_type_enabled(v33, OS_LOG_TYPE_INFO))
    {
      *buf = 138543362;
      v101 = apsSenderArgument;
      _os_log_impl(&dword_1B0389000, v33, OS_LOG_TYPE_INFO, "#aps-push Including Sender paramenter. Argument: {%{public}@}", buf, 0xCu);
    }

    v34 = _IMAPCreateQuotedString(@"sender");
    [v80 addObject:v34];

    v35 = _IMAPCreateQuotedString(apsSenderArgument);
    [v80 addObject:v35];
  }

  v36 = MFLogGeneral();
  if (os_log_type_enabled(v36, OS_LOG_TYPE_INFO))
  {
    v37 = [v80 componentsJoinedByString:@" "];
    *buf = 138412546;
    v101 = supportedCopy;
    v102 = 2112;
    v103 = v37;
    _os_log_impl(&dword_1B0389000, v36, OS_LOG_TYPE_INFO, "#aps-push account %@ registering for push: {%@}", buf, 0x16u);
  }

  v78 = [[_MFIMAPCommandParameters alloc] initWithCommand:35 arguments:v80];
  v107 = v78;
  v38 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v107 count:1];
  v77 = [(MFIMAPConnection *)self _responseFromSendingCommands:v38];

  if ([v77 responseType] != 2)
  {
    v63 = MFLogGeneral();
    if (os_log_type_enabled(v63, OS_LOG_TYPE_ERROR))
    {
      [MFIMAPConnection _sendApplePushForAccountIfSupported:];
    }

    v64 = 0;
    v20 = 0;
    [supportedCopy setLastPushRegistration:CFAbsoluteTimeGetCurrent()];
    goto LABEL_87;
  }

  v85 = [objc_alloc(MEMORY[0x1E695DFA8]) initWithCapacity:{objc_msgSend(obj, "count")}];
  v93 = 0u;
  v94 = 0u;
  v91 = 0u;
  v92 = 0u;
  untaggedResponses = [(_MFIMAPCommandParameters *)v78 untaggedResponses];
  v88 = untaggedResponses;
  v40 = [untaggedResponses countByEnumeratingWithState:&v91 objects:v106 count:16];
  if (!v40)
  {

    v56 = 0;
    v64 = 0;
LABEL_75:
    v65 = MFLogGeneral();
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      untaggedResponses2 = [(_MFIMAPCommandParameters *)v78 untaggedResponses];
      [(MFIMAPConnection *)supportedCopy _sendApplePushForAccountIfSupported:untaggedResponses2, buf, v65];
    }

    v20 = 0;
    goto LABEL_78;
  }

  v81 = 0;
  v82 = 0;
  v41 = *v92;
  do
  {
    for (j = 0; j != v40; ++j)
    {
      if (*v92 != v41)
      {
        objc_enumerationMutation(v88);
      }

      v43 = *(*(&v91 + 1) + 8 * j);
      if ([v43 responseType] == 21)
      {
        serverInfo = [v43 serverInfo];
        v45 = [serverInfo objectForKey:@"mailbox"];
        if (v45)
        {
          v46 = MFLogGeneral();
          if (os_log_type_enabled(v46, OS_LOG_TYPE_INFO))
          {
            *buf = 138412546;
            v101 = supportedCopy;
            v102 = 2112;
            v103 = v45;
            _os_log_impl(&dword_1B0389000, v46, OS_LOG_TYPE_INFO, "#aps-push account %@ will send pushes for mailbox '%@'", buf, 0x16u);
          }

          [v85 addObject:v45];
          goto LABEL_61;
        }

        v47 = [serverInfo objectForKey:@"aps-version"];
        v48 = [serverInfo objectForKey:@"aps-topic"];
        v49 = v48;
        if (v47)
        {
          v50 = v48 == 0;
        }

        else
        {
          v50 = 1;
        }

        if (v50)
        {
          v51 = MFLogGeneral();
          if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412802;
            v101 = supportedCopy;
            v102 = 2112;
            v103 = v47;
            v104 = 2112;
            v105 = v43;
            v52 = v51;
            v53 = "#aps-push account %@ (version %@) sent unknown push response %@";
            goto LABEL_58;
          }
        }

        else
        {
          intValue = [v47 intValue];
          if (intValue >= 1 && (v55 = intValue, [supportedCopy apsVersion] >= intValue))
          {
            v51 = v82;
            v81 = v55;
            v82 = [v49 copy];
          }

          else
          {
            v51 = MFLogGeneral();
            if (os_log_type_enabled(v51, OS_LOG_TYPE_ERROR))
            {
              *buf = 138412802;
              v101 = supportedCopy;
              v102 = 2112;
              v103 = v47;
              v104 = 2112;
              v105 = v43;
              v52 = v51;
              v53 = "#aps-push account %@ (version %@) ignoring invalid version in push response '%@'";
LABEL_58:
              _os_log_error_impl(&dword_1B0389000, v52, OS_LOG_TYPE_ERROR, v53, buf, 0x20u);
            }
          }
        }

LABEL_61:
        continue;
      }
    }

    v40 = [v88 countByEnumeratingWithState:&v91 objects:v106 count:16];
  }

  while (v40);

  v56 = v81;
  if (v81 >= 2)
  {
    v57 = MFLogGeneral();
    v58 = os_log_type_enabled(v57, OS_LOG_TYPE_INFO);

    if (v58)
    {
      v59 = [obj mutableCopy];
      [v59 minusSet:v85];
      if ([v59 count])
      {
        v60 = MFLogGeneral();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
        {
          allObjects = [v59 allObjects];
          v62 = [allObjects componentsJoinedByString:{@", "}];
          *buf = 138412546;
          v101 = supportedCopy;
          v102 = 2112;
          v103 = v62;
          _os_log_impl(&dword_1B0389000, v60, OS_LOG_TYPE_INFO, "#aps-push account %@ will NOT push these mailboxes {%@}", buf, 0x16u);
        }
      }

      else
      {
        v60 = MFLogGeneral();
        if (os_log_type_enabled(v60, OS_LOG_TYPE_INFO))
        {
          *buf = 138412290;
          v101 = supportedCopy;
          _os_log_impl(&dword_1B0389000, v60, OS_LOG_TYPE_INFO, "#aps-push account %@ will push all requested mailboxes", buf, 0xCu);
        }
      }
    }

    v20 = v85;
    v56 = v81;
    v64 = v82;
    goto LABEL_86;
  }

  v64 = v82;
  if (v81 != 1)
  {
    goto LABEL_75;
  }

  v20 = v85;
LABEL_78:
  if ([v20 count])
  {
    v67 = v56;
    v68 = MFLogGeneral();
    if (os_log_type_enabled(v68, OS_LOG_TYPE_ERROR))
    {
      [MFIMAPConnection _sendApplePushForAccountIfSupported:];
    }

    [v20 removeAllObjects];
    v56 = v67;
  }

LABEL_86:
  [supportedCopy serverRegisteredMailboxes:v20 withTopic:v64 version:v56];
LABEL_87:
  v99 = v78;
  v69 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v99 count:1];
  [(MFIMAPConnection *)self didFinishCommands:v69];

  objc_autoreleasePoolPop(context);
  v19 = v64;
LABEL_88:

  v5 = v76;
LABEL_89:

LABEL_90:
  v70 = *MEMORY[0x1E69E9840];
}

- (void)_enableCompressionIfSupported
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(v1, v2, 5.7779e-34);
  _os_log_debug_impl(&dword_1B0389000, v3, OS_LOG_TYPE_DEBUG, "server rejected our COMPRESS request: %@", v4, 0xCu);
}

- (BOOL)_connectSocketUsingAccount:(id)account
{
  v4.receiver = self;
  v4.super_class = MFIMAPConnection;
  return [(MFConnection *)&v4 connectUsingAccount:account];
}

- (BOOL)_doBasicConnectionUsingAccount:(id)account
{
  v15[4] = *MEMORY[0x1E69E9840];
  accountCopy = account;
  if (self->super._socket)
  {
    [(MFIMAPConnection *)self disconnectAndNotifyDelegate:0];
  }

  *(self + 152) &= 0xF8u;
  self->_expirationTime = 0.0;
  if ([(MFIMAPConnection *)self _connectSocketUsingAccount:accountCopy])
  {
    self->_connectTime = CFAbsoluteTimeGetCurrent();
    v5 = [[_MFIMAPCommandParameters alloc] initWithCommand:0];
    v6 = [(MFIMAPConnection *)self _copyNextServerResponseForCommand:v5];
    v7 = v6;
    if (v6)
    {
      if ([v6 isUntagged])
      {
        responseType = [v7 responseType];
        if (responseType == 5)
        {
          *(self + 152) = *(self + 152) & 0xF8 | 2;
        }

        else if (responseType == 2)
        {
          *(self + 152) = *(self + 152) & 0xF8 | 1;
          if ([v7 responseCode] == 14)
          {
            [(MFIMAPConnection *)self _clearCapabilities];
            responseInfo = [v7 responseInfo];
            [(MFIMAPConnection *)self _addCapabilities:responseInfo];
          }
        }

        goto LABEL_16;
      }

      v11 = +[MFIMAPConnection log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(MFNWConnectionWrapper *)self->super._socket remoteHostname];
        objc_claimAutoreleasedReturnValue();
        [MFIMAPConnection _doBasicConnectionUsingAccount:];
      }
    }

    else
    {
      v11 = +[MFIMAPConnection log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
      {
        [(MFNWConnectionWrapper *)self->super._socket remoteHostname];
        objc_claimAutoreleasedReturnValue();
        [MFIMAPConnection _doBasicConnectionUsingAccount:];
      }
    }

    [(MFIMAPConnection *)self disconnectAndNotifyDelegate:0];
LABEL_16:
    v15[0] = v5;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:v15 count:1];
    [(MFIMAPConnection *)self didFinishCommands:v12];

    v10 = (32 * *(self + 152)) > 0;
    goto LABEL_17;
  }

  v10 = 0;
LABEL_17:

  v13 = *MEMORY[0x1E69E9840];
  return v10;
}

- (BOOL)_tryConnectionUsingAccount:(id)account
{
  accountCopy = account;
  if (![(MFIMAPConnection *)self _doBasicConnectionUsingAccount:accountCopy])
  {
    goto LABEL_12;
  }

  if ([accountCopy usesSSL])
  {
    securityProtocol = [(MFNWConnectionWrapper *)self->super._socket securityProtocol];
    v6 = [*MEMORY[0x1E695E968] isEqualToString:securityProtocol];

    if (v6)
    {
      v7 = *(self + 152);
      if ((v7 & 7) == 2)
      {
        *(self + 152) = v7 & 0xF8;
        v8 = MEMORY[0x1E696AEC0];
        v9 = MFLookupLocalizedString(@"TLS_NOT_SUPPORTED_FORMAT", @"The %@ server “%@” doesn’t support TLS (SSL) on port %u. Please check your account settings and try again.", @"Delayed");
        accountTypeString = [objc_opt_class() accountTypeString];
        hostname = [accountCopy hostname];
        clientCertificates = [v8 stringWithFormat:v9, accountTypeString, hostname, objc_msgSend(accountCopy, "portNumber")];

        v13 = +[MFActivityMonitor currentMonitor];
        v14 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1034 localizedDescription:clientCertificates];
        [v13 setError:v14];

        enableSSL = 0;
LABEL_11:

        goto LABEL_13;
      }

      if ([(MFIMAPConnection *)self startTLSForAccount:accountCopy])
      {
        clientCertificates = [accountCopy clientCertificates];
        if (clientCertificates)
        {
          [(MFNWConnectionWrapper *)self->super._socket setClientCertificates:clientCertificates];
        }

        enableSSL = [(MFConnection *)self enableSSL];
        [(MFIMAPConnection *)self _updateCapabilitiesForAccount:accountCopy withAuthenticationResponse:0];
        goto LABEL_11;
      }

LABEL_12:
      enableSSL = 0;
      goto LABEL_13;
    }
  }

  enableSSL = 1;
LABEL_13:

  return enableSSL;
}

- (BOOL)connectUsingAccount:(id)account
{
  accountCopy = account;
  hostname = [accountCopy hostname];
  credentialAccessibility = [accountCopy credentialAccessibility];
  if (credentialAccessibility)
  {
    if (credentialAccessibility == 1)
    {
      v7 = MFLookupLocalizedString(@"FAILED_FETCH_TITLE", @"Cannot Get Mail", @"Delayed");
      v8 = [accountCopy missingPasswordErrorWithTitle:v7];
LABEL_6:
      v9 = v8;

      if (v9)
      {
        v10 = +[MFActivityMonitor currentMonitor];
        [v10 setError:v9];
      }

      goto LABEL_11;
    }

    if (credentialAccessibility == 2)
    {
      v7 = MFLookupLocalizedString(@"FAILED_FETCH_TITLE", @"Cannot Get Mail", @"Delayed");
      v8 = [accountCopy inaccessiblePasswordErrorWithTitle:v7];
      goto LABEL_6;
    }

LABEL_11:
    v11 = 0;
    goto LABEL_12;
  }

  if (!hostname || ![hostname length])
  {
    goto LABEL_11;
  }

  [(MFIMAPConnection *)self mf_lock];
  v11 = [(MFIMAPConnection *)self _tryConnectionUsingAccount:accountCopy];
  [(MFIMAPConnection *)self mf_unlock];
LABEL_12:

  return v11;
}

- (void)disconnectAndNotifyDelegate:(BOOL)delegate
{
  delegateCopy = delegate;
  [(MFIMAPConnection *)self mf_lock];
  socket = self->super._socket;
  if (socket)
  {
    [(MFNWConnectionWrapper *)socket unregisterForBytesAvailable];
    [(MFNWConnectionWrapper *)self->super._socket close];
    v6 = self->super._socket;
    self->super._socket = 0;

    self->_expirationTime = 0.0;
  }

  [(MFConnection *)self endCompression];
  [(MFIMAPConnection *)self _clearCapabilities];
  separatorChar = self->_separatorChar;
  self->_separatorChar = 0;

  serverNamespace = self->_serverNamespace;
  self->_serverNamespace = 0;

  selectedMailbox = self->_selectedMailbox;
  self->_selectedMailbox = 0;

  [(NSMutableData *)self->_data setLength:0];
  *(self + 152) &= 0xF8u;
  self->_commandNumber = 0;
  self->_idleCommandSequenceNumber = 0;
  [(MFIMAPConnection *)self mf_unlock];
  if (delegateCopy)
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    if (WeakRetained && (*&self->_delegateState & 8) != 0)
    {
      [WeakRetained connectionDidDisconnect:self];
    }
  }
}

- (int64_t)connectionState
{
  v12[1] = *MEMORY[0x1E69E9840];
  if (!self->super._socket)
  {
    goto LABEL_19;
  }

  [(MFIMAPConnection *)self mf_lock];
  if (self->_expirationTime != 0.0 && CFAbsoluteTimeGetCurrent() > self->_expirationTime)
  {
    [(MFIMAPConnection *)self noop];
  }

  socket = self->super._socket;
  if (socket && [(MFNWConnectionWrapper *)socket isValid])
  {
    v4 = 0;
    v5 = *(self + 152);
  }

  else
  {
    v5 = *(self + 152) & 0xF8;
    *(self + 152) = v5;
    v4 = self->super._socket != 0;
  }

  if ((32 * v5) >= 1 && !(v4 | ![(MFNWConnectionWrapper *)self->super._socket isReadable]))
  {
    do
    {
      v6 = [[_MFIMAPCommandParameters alloc] initWithCommand:0];
      v7 = [(MFIMAPConnection *)self _copyNextServerResponseForCommand:v6];
      v4 = [v7 responseType] == 3 || objc_msgSend(v7, "responseType") == 6;
      v12[0] = v6;
      v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
      [(MFIMAPConnection *)self didFinishCommands:v8];
    }

    while (((v4 | ![(MFNWConnectionWrapper *)self->super._socket isReadable]) & 1) == 0);
  }

  v9 = *(self + 152);
  [(MFIMAPConnection *)self mf_unlock];
  result = v9 << 61 >> 61;
  if (v4 && self->super._socket)
  {
    [(MFIMAPConnection *)self disconnectAndNotifyDelegate:1];
LABEL_19:
    result = 0;
  }

  v11 = *MEMORY[0x1E69E9840];
  return result;
}

- (int)fillLiteralBuffer:(char *)buffer count:(unint64_t)count dataLength:(unint64_t)length nonSynchronizingLiteral:(BOOL *)literal
{
  if (!literal)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"IMAPConnection.m" lineNumber:935 description:{@"Invalid parameter not satisfying: %@", @"outNonSynchronizingLiteral"}];
  }

  *(self + 130);
  v11 = *(self + 64);
  v12 = "+";
  if ((v11 & 2) != 0)
  {
    LOBYTE(v15) = 1;
  }

  else if (length > 0x1000)
  {
    LOBYTE(v15) = 0;
    v12 = "";
  }

  else
  {
    v14 = v11 & 4;
    v13 = v14 == 0;
    v15 = v14 >> 2;
    if (v13)
    {
      v12 = "";
    }
  }

  *literal = v15;
  return snprintf(buffer, count, "{%lu%s}\r\n", length, v12);
}

- (unint64_t)_sendCommands:(id)commands response:(id *)response
{
  v95 = *MEMORY[0x1E69E9840];
  commandsCopy = commands;
  v69 = [commandsCopy count];
  v88 = 0;
  v89 = &v88;
  v90 = 0x2020000000;
  v91 = 1;
  [(MFIMAPConnection *)self locked_finishIdle];
  [(NSMutableData *)self->_data setLength:0];
  v86 = 0u;
  v87 = 0u;
  v84 = 0u;
  v85 = 0u;
  obj = commandsCopy;
  v5 = [obj countByEnumeratingWithState:&v84 objects:v94 count:16];
  if (!v5)
  {
    v6 = 0;
    v7 = 0;
    v79 = 0;
    v8 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_135;
  }

  v6 = 0;
  v7 = 0;
  v79 = 0;
  v73 = *v85;
  v74 = v5;
  v8 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_3:
  v76 = 0;
  while (1)
  {
    if (*v85 != v73)
    {
      objc_enumerationMutation(obj);
    }

    v9 = *(*(&v84 + 1) + 8 * v76);
    v78 = [v9 command] == 32 ? objc_msgSend(v9, "sequenceNumber") : 0;
    if ([v9 command] != 29)
    {
      break;
    }

LABEL_12:
    arguments = [v9 arguments];
    v80 = [arguments count];

    if ([v9 command] == 38)
    {
      if (!v80)
      {
        goto LABEL_128;
      }

      arguments2 = [v9 arguments];
      v13 = [arguments2 objectAtIndexedSubscript:0];

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        v77 = v7;
        goto LABEL_126;
      }

      data = self->_data;
      v15 = v13;
      [(NSMutableData *)data mf_appendCString:[v13 UTF8String]];

      v16 = 1;
    }

    else
    {
      -[NSMutableData mf_appendCString:](self->_data, "mf_appendCString:", _IMAPCommandTable[[v9 command]]);
      v16 = 0;
    }

    if (v16 >= v80)
    {
      v77 = v7;
      goto LABEL_120;
    }

    v77 = v7;
    while (1)
    {
      arguments3 = [v9 arguments];
      v18 = [arguments3 objectAtIndex:v16];

      objc_opt_class();
      isKindOfClass = objc_opt_isKindOfClass();
      if ((isKindOfClass & 1) == 0 || ([v18 hasPrefix:@""]) & 1) == 0)
      {
        [(NSMutableData *)self->_data appendBytes:" " length:1];
        if ((isKindOfClass & 1) == 0)
        {
          break;
        }
      }

      v20 = MFCreateDataWithString();
      if ([v9 command] == 5)
      {
        if (v16 != 1)
        {
          goto LABEL_31;
        }
      }

      else
      {
        command = [v9 command];
        if (v16 != 1 || command != 4)
        {
          goto LABEL_31;
        }
      }

      v8 = [(NSMutableData *)self->_data length];
      v6 = [v20 length];
LABEL_31:
      [(NSMutableData *)self->_data appendData:v20];

      ++v16;
LABEL_113:

      if (v16 == v80)
      {
        goto LABEL_120;
      }
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_119;
      }

      v23 = ++v16 == v80 && [v9 command] == 19;
      v30 = v18;
      v31 = [v30 length];
      v75 = v30;
      if (v23)
      {
        v32 = v30;
        bytes = [v30 bytes];
        v34 = v8;
        v35 = v6;
        if (v31 >= 1)
        {
          v36 = bytes;
          v37 = 0;
          v38 = (bytes + v31);
          do
          {
            v39 = memchr(v36, 10, v38 - v36);
            if (v39 && (v39 == v36 || *(v39 - 1) != 13))
            {
              ++v31;
              v37 = 1;
            }

            if (v39)
            {
              v36 = v39 + 1;
            }

            else
            {
              v36 = v38;
            }
          }

          while (v36 < v38);
LABEL_59:
          v92[0] = -86;
          *&v40 = 0xAAAAAAAAAAAAAAAALL;
          *(&v40 + 1) = 0xAAAAAAAAAAAAAAAALL;
          *buf = v40;
          *&buf[16] = v40;
          [(NSMutableData *)self->_data appendBytes:buf length:[(MFIMAPConnection *)self fillLiteralBuffer:buf count:32 dataLength:v31 - v78 nonSynchronizingLiteral:v92]];
          v41 = [(MFConnection *)self writeData:self->_data dontLogBytesInRange:v34, v35];
          *(v89 + 24) = v41;
          if (!v41)
          {
            v43 = 0;
            goto LABEL_66;
          }

          if (v92[0])
          {
            v42 = 0;
LABEL_62:
            if ((v92[0] & 1) == 0 && !v42)
            {
              v43 = 0;
              goto LABEL_66;
            }

            if (v37)
            {
              v45 = v75;
              bytes2 = [v75 bytes];
              v47 = [v75 length];
              [(NSMutableData *)self->_data setLength:0];
              *(v89 + 24) = 1;
              if (v47 >= 1)
              {
                v71 = v42;
                v48 = &bytes2[v47];
                while (1)
                {
                  v49 = v48 - bytes2;
                  v50 = memchr(bytes2, 10, v48 - bytes2);
                  v51 = v50;
                  if (v50)
                  {
                    v52 = v50 - bytes2;
                    if (v50 == bytes2)
                    {
                      goto LABEL_85;
                    }

                    v53 = *(v50 - 1);
                    v54 = self->_data;
                    if (v53 != 13)
                    {
                      [(NSMutableData *)v54 appendBytes:bytes2 length:v52];
LABEL_85:
                      [(NSMutableData *)self->_data appendBytes:&kIMAPLineEnding length:2];
                      goto LABEL_86;
                    }

                    v49 = v52 + 1;
                  }

                  else
                  {
                    v54 = self->_data;
                  }

                  [(NSMutableData *)v54 appendBytes:bytes2 length:v49];
LABEL_86:
                  if (v51)
                  {
                    bytes2 = v51 + 1;
                  }

                  else
                  {
                    bytes2 = v48;
                  }

                  if ([(NSMutableData *)self->_data length]> 0xFFF || bytes2 >= v48)
                  {
                    v56 = [(MFConnection *)self writeData:self->_data];
                    *(v89 + 24) = v56;
                    [(NSMutableData *)self->_data setLength:0];
                  }

                  if (*(v89 + 24) != 1 || bytes2 >= v48)
                  {
                    v43 = v71;
                    goto LABEL_66;
                  }
                }
              }

LABEL_103:
              v43 = v42;
            }

            else
            {
              if ([v9 command] == 5)
              {
                v58 = -[MFConnection writeData:dontLogBytesInRange:](self, "writeData:dontLogBytesInRange:", v75, 0, [v75 length]);
              }

              else
              {
                v58 = [(MFConnection *)self writeData:v75];
              }

              *(v89 + 24) = v58;
              v43 = v42;
            }
          }

          else
          {
            v42 = [(MFIMAPConnection *)self _copyNextTaggedOrContinuationResponseForCommand:v9];
            if ([v42 responseType] == 1)
            {
              if (v89[3])
              {
                goto LABEL_62;
              }

              goto LABEL_103;
            }

            v43 = 0;
            *(v89 + 24) = 0;
            v77 = v42;
          }

LABEL_66:
          [(NSMutableData *)self->_data setLength:0];
          v44 = *(v89 + 24);

          goto LABEL_111;
        }
      }

      else
      {
        v34 = v8;
        v35 = v6;
      }

      v37 = 0;
      goto LABEL_59;
    }

    v21 = ++v16 == v80 && [v9 command] == 19;
    v24 = v18;
    v25 = [v24 length];
    if (v21)
    {
      v25 += [v24 numberOfNewlinesNeedingConversion:0];
    }

    v92[0] = -86;
    *&v26 = 0xAAAAAAAAAAAAAAAALL;
    *(&v26 + 1) = 0xAAAAAAAAAAAAAAAALL;
    *buf = v26;
    *&buf[16] = v26;
    [(NSMutableData *)self->_data appendBytes:buf length:[(MFIMAPConnection *)self fillLiteralBuffer:buf count:32 dataLength:v25 - v78 nonSynchronizingLiteral:v92]];
    v27 = [(MFConnection *)self writeData:self->_data dontLogBytesInRange:v8, v6];
    *(v89 + 24) = v27;
    if (!v27)
    {
      goto LABEL_43;
    }

    if (v92[0])
    {
      v28 = 0;
LABEL_41:
      if ((v92[0] & 1) == 0 && !v28)
      {
LABEL_43:
        v29 = 0;
        goto LABEL_110;
      }

      if (v21)
      {
        [(NSMutableData *)self->_data setLength:0];
        *(v89 + 24) = 1;
        v81[0] = MEMORY[0x1E69E9820];
        v81[1] = 3221225472;
        v81[2] = __43__MFIMAPConnection__sendCommands_response___block_invoke_3;
        v81[3] = &unk_1E7AA2BA8;
        v81[4] = self;
        v81[5] = &v88;
        [v24 enumerateConvertingNewlinesUsingBlock:v81];
      }

      else if ([v9 command] == 5)
      {
        v83[0] = MEMORY[0x1E69E9820];
        v83[1] = 3221225472;
        v83[2] = __43__MFIMAPConnection__sendCommands_response___block_invoke;
        v83[3] = &unk_1E7AA2B80;
        v83[4] = self;
        v83[5] = &v88;
        [v24 enumerateByteRangesUsingBlock:v83];
      }

      else
      {
        v82[0] = MEMORY[0x1E69E9820];
        v82[1] = 3221225472;
        v82[2] = __43__MFIMAPConnection__sendCommands_response___block_invoke_2;
        v82[3] = &unk_1E7AA2B80;
        v82[4] = self;
        v82[5] = &v88;
        [v24 enumerateByteRangesUsingBlock:v82];
      }

LABEL_109:
      v29 = v28;
    }

    else
    {
      v28 = [(MFIMAPConnection *)self _copyNextTaggedOrContinuationResponseForCommand:v9];
      if ([v28 responseType] == 1)
      {
        if (v89[3])
        {
          goto LABEL_41;
        }

        goto LABEL_109;
      }

      v29 = 0;
      *(v89 + 24) = 0;
      v77 = v28;
    }

LABEL_110:
    [(NSMutableData *)self->_data setLength:0];
    v44 = *(v89 + 24);

LABEL_111:
    v6 = 0;
    v8 = 0x7FFFFFFFFFFFFFFFLL;
    if (v44)
    {
      ++v79;
      goto LABEL_113;
    }

LABEL_119:

LABEL_120:
    if (!v77)
    {
      [(NSMutableData *)self->_data appendBytes:&kIMAPLineEnding length:2];
    }

    if (*(v89 + 24) == 1 && [(NSMutableData *)self->_data length])
    {
      v13 = +[MFIMAPConnection log];
      if (os_log_type_enabled(v13, OS_LOG_TYPE_DEFAULT))
      {
        _connectionLogPrefix = [(MFIMAPConnection *)self _connectionLogPrefix];
        v60 = [(MFIMAPConnection *)self _logStringForCommand:v9];
        *buf = 138543618;
        *&buf[4] = _connectionLogPrefix;
        *&buf[12] = 2114;
        *&buf[14] = v60;
        _os_log_impl(&dword_1B0389000, v13, OS_LOG_TYPE_DEFAULT, "%{public}@ WROTE: %{public}@", buf, 0x16u);
      }

LABEL_126:
    }

    v7 = v77;
LABEL_128:
    if (++v76 == v74)
    {
      v74 = [obj countByEnumeratingWithState:&v84 objects:v94 count:16];
      if (!v74)
      {
        goto LABEL_135;
      }

      goto LABEL_3;
    }
  }

  *&v10 = 0xAAAAAAAAAAAAAAAALL;
  *(&v10 + 1) = 0xAAAAAAAAAAAAAAAALL;
  *buf = v10;
  *&buf[16] = v10;
  if ([v9 command] < 0x27)
  {
    ++self->_commandNumber;
    [v9 setSequenceNumber:?];
    __snprintf_chk(buf, 0x20uLL, 0, 0x20uLL, "%lu ", [v9 sequenceNumber]);
    [(NSMutableData *)self->_data mf_appendCString:buf];
    goto LABEL_12;
  }

  v61 = +[MFIMAPConnection log];
  if (os_log_type_enabled(v61, OS_LOG_TYPE_ERROR))
  {
    [MEMORY[0x1E696AD98] numberWithInteger:{objc_msgSend(v9, "command")}];
    objc_claimAutoreleasedReturnValue();
    [MFIMAPConnection _sendCommands:response:];
  }

LABEL_135:
  if (*(v89 + 24) == 1 && [(NSMutableData *)self->_data length])
  {
    v62 = [(MFConnection *)self writeData:self->_data dontLogBytesInRange:v8, v6];
    v63 = v79;
    if (v62)
    {
      v63 = v69;
    }

    v79 = v63;
  }

  [(NSMutableData *)self->_data setLength:0];
  if (response)
  {
    v64 = v7;
    *response = v7;
  }

  self->_expirationTime = CFAbsoluteTimeGetCurrent() + 1500.0;
  if (v79 < v69)
  {
    v65 = +[MFIMAPConnection log];
    if (os_log_type_enabled(v65, OS_LOG_TYPE_ERROR))
    {
      [MFIMAPConnection _sendCommands:response:];
    }

    [(MFIMAPConnection *)self disconnectAndNotifyDelegate:1];
  }

  _Block_object_dispose(&v88, 8);
  v66 = *MEMORY[0x1E69E9840];
  return v79;
}

uint64_t __43__MFIMAPConnection__sendCommands_response___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [*(a1 + 32) writeBytes:a2 length:a4 dontLogBytesInRange:{0, a4}];
  *(*(*(a1 + 40) + 8) + 24) = result;
  *a5 = *(*(*(a1 + 40) + 8) + 24) ^ 1;
  return result;
}

uint64_t __43__MFIMAPConnection__sendCommands_response___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [*(a1 + 32) writeBytes:a2 length:a4 dontLogBytesInRange:{0x7FFFFFFFFFFFFFFFLL, 0}];
  *(*(*(a1 + 40) + 8) + 24) = result;
  *a5 = *(*(*(a1 + 40) + 8) + 24) ^ 1;
  return result;
}

uint64_t __43__MFIMAPConnection__sendCommands_response___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  [*(*(a1 + 32) + 208) appendBytes:a2 length:a3];
  if ([*(*(a1 + 32) + 208) length] > 0xFFF || a5 != 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) writeData:*(*(a1 + 32) + 208)];
    [*(*(a1 + 32) + 208) setLength:0];
  }

  return *(*(*(a1 + 40) + 8) + 24);
}

- (id)_copyNextServerResponseForCommand:(id)command
{
  commandCopy = command;
  v5 = [MFIMAPResponse alloc];
  responseConsumer = [commandCopy responseConsumer];
  v7 = [(MFIMAPResponse *)v5 initWithConnection:self responseConsumer:responseConsumer];

  if (!v7 || [(MFIMAPResponse *)v7 responseType]== 6)
  {
    [(MFIMAPConnection *)self disconnectAndNotifyDelegate:1];

    v7 = 0;
  }

  return v7;
}

- (id)_copyNextTaggedOrContinuationResponseForCommand:(id)command
{
  v39 = *MEMORY[0x1E69E9840];
  commandCopy = command;
  [commandCopy sequenceNumber];
  v5 = EFStringWithUnsignedInteger();
  v6 = [(MFIMAPConnection *)self _copyNextServerResponseForCommand:commandCopy];
  if (!v6)
  {
    goto LABEL_38;
  }

  v8 = 0;
  v9 = 0;
  *&v7 = 138543618;
  v34 = v7;
  while ([v6 responseType] != 1)
  {
    if (([v6 isUntagged] & 1) == 0)
    {
      v10 = [v6 tag];
      v11 = [v5 isEqualToString:v10];

      if (v11)
      {
        break;
      }
    }

    if ([v6 responseType] == 17)
    {
      ++v8;
    }

    else if ([v6 responseType] == 15)
    {
      ++v9;
    }

    else
    {
      v12 = +[MFIMAPConnection log];
      if (os_log_type_enabled(v12, OS_LOG_TYPE_DEFAULT))
      {
        _connectionLogPrefix = [(MFIMAPConnection *)self _connectionLogPrefix];
        ef_publicDescription = [v6 ef_publicDescription];
        *buf = v34;
        v36 = _connectionLogPrefix;
        v37 = 2114;
        v38 = ef_publicDescription;
        _os_log_impl(&dword_1B0389000, v12, OS_LOG_TYPE_DEFAULT, "%{public}@ READ: %{public}@", buf, 0x16u);
      }
    }

    if (![v6 isUntagged])
    {
      goto LABEL_20;
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v16 = WeakRetained;
    if (!WeakRetained || (*&self->_delegateState & 1) == 0)
    {

LABEL_17:
      untaggedResponses = [commandCopy untaggedResponses];
      v18 = untaggedResponses == 0;

      if (v18)
      {
        v19 = objc_alloc_init(MEMORY[0x1E695DF70]);
        [commandCopy setUntaggedResponses:v19];
      }

      untaggedResponses2 = [commandCopy untaggedResponses];
      [untaggedResponses2 addObject:v6];

      goto LABEL_20;
    }

    v22 = [WeakRetained connection:self shouldHandleUntaggedResponse:v6 forCommand:commandCopy];

    if (v22)
    {
      goto LABEL_17;
    }

LABEL_20:
    v21 = [(MFIMAPConnection *)self _copyNextServerResponseForCommand:commandCopy];

    v6 = v21;
    if (!v21)
    {
      goto LABEL_38;
    }
  }

  if (v8)
  {
    v23 = +[MFIMAPConnection log];
    if (os_log_type_enabled(v23, OS_LOG_TYPE_DEFAULT))
    {
      _connectionLogPrefix2 = [(MFIMAPConnection *)self _connectionLogPrefix];
      *buf = v34;
      v36 = _connectionLogPrefix2;
      v37 = 1024;
      LODWORD(v38) = v8;
      _os_log_impl(&dword_1B0389000, v23, OS_LOG_TYPE_DEFAULT, "%{public}@ READ: %d untagged fetch responses", buf, 0x12u);
    }
  }

  if (v9)
  {
    v25 = +[MFIMAPConnection log];
    if (os_log_type_enabled(v25, OS_LOG_TYPE_DEFAULT))
    {
      _connectionLogPrefix3 = [(MFIMAPConnection *)self _connectionLogPrefix];
      *buf = v34;
      v36 = _connectionLogPrefix3;
      v37 = 1024;
      LODWORD(v38) = v9;
      _os_log_impl(&dword_1B0389000, v25, OS_LOG_TYPE_DEFAULT, "%{public}@ READ: %d untagged list responses", buf, 0x12u);
    }
  }

  v27 = +[MFIMAPConnection log];
  if (os_log_type_enabled(v27, OS_LOG_TYPE_DEFAULT))
  {
    _connectionLogPrefix4 = [(MFIMAPConnection *)self _connectionLogPrefix];
    ef_publicDescription2 = [v6 ef_publicDescription];
    *buf = v34;
    v36 = _connectionLogPrefix4;
    v37 = 2114;
    v38 = ef_publicDescription2;
    _os_log_impl(&dword_1B0389000, v27, OS_LOG_TYPE_DEFAULT, "%{public}@ READ: %{public}@", buf, 0x16u);
  }

  v30 = objc_loadWeakRetained(&self->_delegate);
  v31 = v30;
  if (v30 && (*&self->_delegateState & 2) != 0)
  {
    [v30 connection:self didReceiveResponse:v6 forCommand:commandCopy];
  }

LABEL_38:
  v32 = *MEMORY[0x1E69E9840];
  return v6;
}

- (id)_errorForResponse:(id)response commandParams:(id)params
{
  v31 = *MEMORY[0x1E69E9840];
  responseCopy = response;
  paramsCopy = params;
  v8 = +[MFActivityMonitor currentMonitor];
  if ([paramsCopy command] == 13 && (-[MFNWConnectionWrapper remoteHostname](self->super._socket, "remoteHostname"), (v9 = objc_claimAutoreleasedReturnValue()) != 0))
  {
    v10 = MEMORY[0x1E696AEC0];
    v11 = MFLookupLocalizedString(@"IMAP_OPEN_FAILED_MSG_FORMAT", @"Mail was unable to open this mailbox on the server “%@”.", @"Delayed");
    v12 = [v10 stringWithFormat:v11, v9];
    v13 = v9;
  }

  else
  {
    v14 = MEMORY[0x1E696AEC0];
    v11 = MFLookupLocalizedString(@"IMAP_COMMAND_FAILED_FORMAT1", @"IMAP command “%@” failed.", @"Delayed");
    v15 = [MEMORY[0x1E696AEC0] stringWithCString:_IMAPCommandTable[objc_msgSend(paramsCopy encoding:{"command")], 1}];
    v12 = [v14 stringWithFormat:v11, v15];

    v13 = 0;
  }

  v16 = _messageFromResponse(responseCopy);
  if (!v16)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    untaggedResponses = [paramsCopy untaggedResponses];
    v18 = [untaggedResponses countByEnumeratingWithState:&v26 objects:v30 count:16];
    if (v18)
    {
      v19 = *v27;
LABEL_8:
      v20 = 0;
      while (1)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(untaggedResponses);
        }

        v16 = _messageFromResponse(*(*(&v26 + 1) + 8 * v20));
        if (v16)
        {
          break;
        }

        if (v18 == ++v20)
        {
          v18 = [untaggedResponses countByEnumeratingWithState:&v26 objects:v30 count:16];
          if (v18)
          {
            goto LABEL_8;
          }

          goto LABEL_14;
        }
      }
    }

    else
    {
LABEL_14:
      v16 = 0;
    }
  }

  v21 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1030 localizedDescription:v16];
  [v21 useGenericDescription:v12];
  error = [v8 error];
  v23 = error == 0;

  if (v23)
  {
    [v8 setError:v21];
  }

  v24 = *MEMORY[0x1E69E9840];

  return v21;
}

- (id)capabilities
{
  [(MFIMAPConnection *)self mf_lock];
  capabilities = self->_capabilities;
  if (!capabilities)
  {
    [(MFIMAPConnection *)self _fetchCapabilities];
    capabilities = self->_capabilities;
  }

  allObjects = [(NSMutableSet *)capabilities allObjects];
  [(MFIMAPConnection *)self mf_unlock];

  return allObjects;
}

- (BOOL)supportsCapability:(int64_t)capability
{
  [(MFIMAPConnection *)self mf_lock];
  if (!self->_capabilities)
  {
    [(MFIMAPConnection *)self _fetchCapabilities];
  }

  locked = locked_supportsCapability(self, capability);
  [(MFIMAPConnection *)self mf_unlock];
  if (capability == 16 && locked)
  {
    LOBYTE(locked) = *(self + 240) ^ 1;
  }

  return locked & 1;
}

- (void)noop
{
  v10[1] = *MEMORY[0x1E69E9840];
  [(MFIMAPConnection *)self mf_lock];
  timeout = [(MFNWConnectionWrapper *)self->super._socket timeout];
  if (timeout >= 11)
  {
    [(MFNWConnectionWrapper *)self->super._socket setTimeout:10];
  }

  v4 = [[_MFIMAPCommandParameters alloc] initWithCommand:1];
  v10[0] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
  v6 = [(MFIMAPConnection *)self _responseFromSendingCommands:v5];

  if (timeout > 10)
  {
    [(MFNWConnectionWrapper *)self->super._socket setTimeout:timeout];
  }

  [(MFIMAPConnection *)self mf_unlock];
  v9 = v4;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
  [(MFIMAPConnection *)self didFinishCommands:v7];

  v8 = *MEMORY[0x1E69E9840];
}

- (BOOL)authenticateUsingAccount:(id)account
{
  v35 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  password = [accountCopy password];
  [(MFIMAPConnection *)self mf_lock];
  if ((32 * *(self + 152)) > 32)
  {
    goto LABEL_4;
  }

  v34.receiver = self;
  v34.super_class = MFIMAPConnection;
  v6 = [(MFConnection *)&v34 authenticateUsingAccount:accountCopy];
  v7 = +[MFActivityMonitor currentMonitor];
  error = [v7 error];
  preferredAuthScheme = [accountCopy preferredAuthScheme];
  name = [preferredAuthScheme name];
  v11 = [name isEqualToString:*MEMORY[0x1E699B1E8]];

  if ((v6 & 1) == 0)
  {
    if ([(MFConnection *)self isValid])
    {
      if (v11)
      {
        username = [accountCopy username];
        v14 = [username dataUsingEncoding:1];
        v15 = v14 == 0;

        if (v15)
        {
          v22 = +[MFIMAPConnection log];
          if (os_log_type_enabled(v22, OS_LOG_TYPE_ERROR))
          {
            [0 ef_publicDescription];
            objc_claimAutoreleasedReturnValue();
            [MFIMAPConnection authenticateUsingAccount:];
          }

          v23 = MEMORY[0x1E696AEC0];
          v24 = MFLookupLocalizedString(@"FAILED_LOGIN", @"The user name or password for “%@” is incorrect.", @"Delayed");
          hostname = [accountCopy hostname];
          v16 = [v23 stringWithFormat:v24, hostname];

          v26 = MFLookupLocalizedString(@"FAILED_FETCH_TITLE", @"Cannot Get Mail", @"Delayed");
          v27 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1032 localizedDescription:v16 title:v26 userInfo:0];

          goto LABEL_18;
        }

        if (!password)
        {
          v16 = MFLookupLocalizedString(@"FAILED_FETCH_TITLE", @"Cannot Get Mail", @"Delayed");
          v17 = [accountCopy missingPasswordErrorWithTitle:v16];
          goto LABEL_17;
        }

        if ([(MFIMAPConnection *)self loginDisabled])
        {
          v16 = MFLookupLocalizedString(@"FAILED_FETCH_TITLE", @"Cannot Get Mail", @"Delayed");
          v17 = [accountCopy wrongPasswordOrUsernameErrorWithTitle:v16];
LABEL_17:
          v27 = v17;
LABEL_18:

          if (!error && v27)
          {
            v28 = +[MFIMAPConnection log];
            if (os_log_type_enabled(v28, OS_LOG_TYPE_ERROR))
            {
              [v27 ef_publicDescription];
              objc_claimAutoreleasedReturnValue();
              [MFIMAPConnection authenticateUsingAccount:];
            }

            v29 = +[MFActivityMonitor currentMonitor];
            [v29 setError:v27];
          }

          goto LABEL_24;
        }

        if ([(MFIMAPConnection *)self loginWithAccount:accountCopy password:password])
        {
          [v7 setError:0];
          goto LABEL_3;
        }
      }

      else if (!error)
      {
        v18 = MEMORY[0x1E696AEC0];
        v33 = MFLookupLocalizedString(@"AUTH_NOT_SUPPORTED_FORMAT", @"The %@ server “%@” doesn’t support %@ authentication. Please check your account settings and try again.", @"Delayed");
        accountTypeString = [objc_opt_class() accountTypeString];
        hostname2 = [accountCopy hostname];
        preferredAuthScheme2 = [accountCopy preferredAuthScheme];
        humanReadableName = [preferredAuthScheme2 humanReadableName];
        v16 = [v18 stringWithFormat:v33, accountTypeString, hostname2, humanReadableName];

        v17 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1034 localizedDescription:v16];
        goto LABEL_17;
      }
    }

LABEL_24:

    v12 = 0;
    goto LABEL_25;
  }

LABEL_3:

LABEL_4:
  [(MFIMAPConnection *)self _sendApplePushForAccountIfSupported:accountCopy];
  [(MFIMAPConnection *)self _sendClientInfoIfSupported];
  [(MFIMAPConnection *)self _enableCompressionIfSupported];
  v12 = 1;
LABEL_25:
  [(MFIMAPConnection *)self mf_unlock];

  v30 = *MEMORY[0x1E69E9840];
  return v12;
}

- (id)_serverErrorForAccount:(id)account response:(id)response command:(id)command
{
  accountCopy = account;
  commandCopy = command;
  v9 = [accountCopy errorForResponse:response];
  untaggedResponses = [commandCopy untaggedResponses];
  v11 = [untaggedResponses count];

  if (!v9 && v11)
  {
    v12 = 1;
    do
    {
      untaggedResponses2 = [commandCopy untaggedResponses];
      v14 = [untaggedResponses2 objectAtIndex:v12 - 1];

      v9 = [accountCopy errorForResponse:v14];

      if (v9)
      {
        break;
      }
    }

    while (v12++ < v11);
  }

  return v9;
}

- (void)_updateCapabilitiesForAccount:(id)account withAuthenticationResponse:(id)response
{
  accountCopy = account;
  responseCopy = response;
  [(MFIMAPConnection *)self _clearCapabilities];
  if (responseCopy && [responseCopy responseCode] == 14)
  {
    responseInfo = [responseCopy responseInfo];
    [(MFIMAPConnection *)self _addCapabilities:responseInfo];
  }

  else
  {
    responseInfo = [(MFIMAPConnection *)self capabilities];
  }

  [accountCopy _setCapabilities:responseInfo];
}

- (int64_t)_doIMAPLoginForAccount:(id)account quotedUsername:(id)username password:(id)password
{
  v32[2] = *MEMORY[0x1E69E9840];
  accountCopy = account;
  usernameCopy = username;
  passwordCopy = password;
  v10 = [_MFIMAPCommandParameters alloc];
  v32[0] = usernameCopy;
  v32[1] = passwordCopy;
  v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:v32 count:2];
  v12 = [(_MFIMAPCommandParameters *)v10 initWithCommand:5 arguments:v11];

  v31 = v12;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v31 count:1];
  v14 = [(MFIMAPConnection *)self _responseFromSendingCommands:v13];

  responseType = [v14 responseType];
  if (responseType == 2)
  {
    *(self + 152) = *(self + 152) & 0xF8 | 2;
    error = 0;
    [(MFIMAPConnection *)self _updateCapabilitiesForAccount:accountCopy withAuthenticationResponse:v14];
  }

  else
  {
    v17 = +[MFActivityMonitor currentMonitor];
    error = [v17 error];

    if (error)
    {
      goto LABEL_6;
    }

    error = [(MFIMAPConnection *)self _serverErrorForAccount:accountCopy response:v14 command:v12];
    if (error)
    {
      goto LABEL_6;
    }

    v18 = MEMORY[0x1E696AEC0];
    v19 = MFLookupLocalizedString(@"FAILED_LOGIN", @"The user name or password for “%@” is incorrect.", @"Delayed");
    hostname = [accountCopy hostname];
    v21 = [v18 stringWithFormat:v19, hostname];

    v22 = MFLookupLocalizedString(@"FAILED_FETCH_TITLE", @"Cannot Get Mail", @"Delayed");
    error = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1032 localizedDescription:v21 title:v22 userInfo:0];

    if (error)
    {
LABEL_6:
      v23 = *(self + 152);
      if ((32 * v23) >= 33)
      {
        *(self + 152) = v23 & 0xF8 | 1;
      }

      userString = [v14 userString];
      [error setMoreInfo:userString];

      v25 = +[MFActivityMonitor currentMonitor];
      [v25 setError:error];
    }
  }

  v30 = v12;
  v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v30 count:1];
  [(MFIMAPConnection *)self didFinishCommands:v26];

  v27 = *MEMORY[0x1E69E9840];
  return responseType;
}

- (BOOL)loginWithAccount:(id)account password:(id)password
{
  accountCopy = account;
  passwordCopy = password;
  [(MFIMAPConnection *)self mf_lock];
  if ((32 * *(self + 152)) <= 32)
  {
    username = [accountCopy username];
    v10 = _IMAPCreateQuotedString(username);
    if (passwordCopy && (v11 = sIMAPNeedsLiteralCharacterSet, v20.length = [(__CFString *)passwordCopy length], v20.location = 0, CFStringFindCharacterFromSet(passwordCopy, v11, v20, 0, 0)))
    {
      v12 = [(__CFString *)passwordCopy dataUsingEncoding:4 allowLossyConversion:0];
      v13 = 1;
    }

    else
    {
      v12 = _IMAPCreateQuotedString(passwordCopy);
      v13 = 0;
    }

    v14 = (32 * *(self + 152));
    if (v14 > 32 || ((v15 = [(MFIMAPConnection *)self _doIMAPLoginForAccount:accountCopy quotedUsername:v10 password:v12], v14 = (32 * *(self + 152)), v14 <= 32) ? (v16 = v15 == 3) : (v16 = 0), !v16 ? (v17 = 1) : (v17 = v13), (v17 & 1) != 0))
    {
      v18 = v12;
    }

    else
    {
      v18 = [(__CFString *)passwordCopy dataUsingEncoding:4 allowLossyConversion:0];

      [(MFIMAPConnection *)self _doIMAPLoginForAccount:accountCopy quotedUsername:v10 password:v18];
      LOBYTE(v14) = 32 * *(self + 152);
    }

    v8 = v14 > 32;
  }

  else
  {
    v8 = 1;
  }

  [(MFIMAPConnection *)self mf_unlock];

  return v8;
}

- (BOOL)logout
{
  v10[1] = *MEMORY[0x1E69E9840];
  if ((*(self + 152) & 7) != 0)
  {
    v3 = [[_MFIMAPCommandParameters alloc] initWithCommand:2];
    [(MFIMAPConnection *)self mf_lock];
    v10[0] = v3;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];
    v5 = [(MFIMAPConnection *)self _sendCommands:v4 response:0]!= 0;

    [(MFIMAPConnection *)self mf_unlock];
    [(MFIMAPConnection *)self disconnectAndNotifyDelegate:1];
    v9 = v3;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
    [(MFIMAPConnection *)self didFinishCommands:v6];
  }

  else
  {
    v5 = 1;
  }

  v7 = *MEMORY[0x1E69E9840];
  return v5;
}

- (id)separatorChar
{
  [(MFIMAPConnection *)self mf_lock];
  v3 = self->_separatorChar;
  [(MFIMAPConnection *)self mf_unlock];
  if (!v3)
  {
    v4 = [(MFIMAPConnection *)self _doListCommand:6 withReference:&stru_1F273A5E0 mailboxName:&stru_1F273A5E0 options:0 getSpecialUse:0 statusDataItems:0 statusEntriesByMailbox:0];

    if (v4)
    {
      [(MFIMAPConnection *)self mf_lock];
      separatorChar = self->_separatorChar;
      if (!separatorChar)
      {
        v6 = [@"/" copy];
        v7 = self->_separatorChar;
        self->_separatorChar = v6;

        separatorChar = self->_separatorChar;
      }

      v3 = separatorChar;
      [(MFIMAPConnection *)self mf_unlock];
    }

    else
    {
      v3 = 0;
    }
  }

  if (v3)
  {
    v8 = v3;
  }

  else
  {
    v8 = &stru_1F273A5E0;
  }

  v9 = v8;

  return v8;
}

- (id)serverPathPrefix
{
  if (!self->_serverNamespace && [(MFIMAPConnection *)self supportsCapability:7])
  {
    _doNamespaceCommand = [(MFIMAPConnection *)self _doNamespaceCommand];
  }

  serverNamespace = self->_serverNamespace;

  return serverNamespace;
}

- (id)_doNamespaceCommand
{
  v23[1] = *MEMORY[0x1E69E9840];
  if ([(MFIMAPConnection *)self supportsCapability:7])
  {
    v3 = [[_MFIMAPCommandParameters alloc] initWithCommand:30];
    v23[0] = v3;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
    v16 = [(MFIMAPConnection *)self _responseFromSendingCommands:v4];

    if ([v16 responseType] == 2)
    {
      v19 = 0u;
      v20 = 0u;
      v17 = 0u;
      v18 = 0u;
      untaggedResponses = [(_MFIMAPCommandParameters *)v3 untaggedResponses];
      v6 = [untaggedResponses countByEnumeratingWithState:&v17 objects:v22 count:16];
      if (v6)
      {
        v7 = *v18;
        while (2)
        {
          for (i = 0; i != v6; ++i)
          {
            if (*v18 != v7)
            {
              objc_enumerationMutation(untaggedResponses);
            }

            v9 = *(*(&v17 + 1) + 8 * i);
            if ([v9 responseType] == 22)
            {
              privateNamespaces = [v9 privateNamespaces];
              firstObject = [privateNamespaces firstObject];

              if (firstObject)
              {
                v12 = [firstObject objectForKeyedSubscript:0x1F27481E0];
                if ([v12 length])
                {
                  objc_storeStrong(&self->_serverNamespace, v12);

                  goto LABEL_19;
                }
              }
            }
          }

          v6 = [untaggedResponses countByEnumeratingWithState:&v17 objects:v22 count:16];
          if (v6)
          {
            continue;
          }

          break;
        }
      }

      v12 = 0;
LABEL_19:
    }

    else
    {
      v12 = 0;
    }

    v21 = v3;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
    [(MFIMAPConnection *)self didFinishCommands:v13];
  }

  else
  {
    v12 = 0;
  }

  v14 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)_doListCommand:(int64_t)command withReference:(id)reference mailboxName:(id)name options:(int64_t)options getSpecialUse:(BOOL)use statusDataItems:(id)items statusEntriesByMailbox:(id *)mailbox
{
  useCopy = use;
  v91[1] = *MEMORY[0x1E69E9840];
  referenceCopy = reference;
  nameCopy = name;
  itemsCopy = items;
  theString = nameCopy;
  if (!nameCopy)
  {
    v82 = 0;
    array = 0;
    goto LABEL_75;
  }

  v79 = [MEMORY[0x1E695DF70] arrayWithCapacity:2];
  v84 = [[_MFIMAPCommandParameters alloc] initWithCommand:command arguments:v79];
  v15 = MFIMAPStringFromMailboxName(referenceCopy);
  [v79 addObject:v15];

  if (options == 1)
  {
    v16 = @"%";
LABEL_7:
    if ([(__CFString *)nameCopy length])
    {
      separatorChar = [(MFIMAPConnection *)self separatorChar];
      MutableCopy = CFStringCreateMutableCopy(0, [(__CFString *)separatorChar length]+ [(__CFString *)nameCopy length]+ [(__CFString *)v16 length], nameCopy);
      v19 = MutableCopy;
      if (separatorChar)
      {
        CFStringAppend(MutableCopy, separatorChar);
      }

      CFStringAppend(v19, v16);
      v20 = MFIMAPStringFromMailboxName(v19);
      [v79 addObject:v20];

      CFRelease(v19);
    }

    else
    {
      separatorChar = MFIMAPStringFromMailboxName(v16);
      [v79 addObject:separatorChar];
    }

    goto LABEL_13;
  }

  if (options == 2)
  {
    v16 = @"*";
    goto LABEL_7;
  }

  separatorChar = MFIMAPStringFromMailboxName(nameCopy);
  [v79 addObject:separatorChar];
LABEL_13:

  v76 = objc_alloc_init(MEMORY[0x1E695DF70]);
  if (useCopy)
  {
    [v76 addObject:@"SPECIAL-USE"];
  }

  if ([itemsCopy count] && -[MFIMAPConnection supportsCapability:](self, "supportsCapability:", 22))
  {
    v21 = objc_alloc_init(MEMORY[0x1E695DF90]);
    v22 = objc_alloc(MEMORY[0x1E696AEC0]);
    v23 = [(MFIMAPConnection *)self parenthesizedStringWithObjects:itemsCopy];
    v24 = [v22 initWithFormat:@"STATUS %@", v23];

    [v76 addObject:v24];
    v82 = v21;
  }

  else
  {
    v82 = 0;
  }

  if ([v76 count])
  {
    v25 = objc_alloc(MEMORY[0x1E696AEC0]);
    v26 = [v76 componentsJoinedByString:@" "];
    v27 = [v25 initWithFormat:@"RETURN (%@)", v26];

    [v79 addObject:v27];
  }

  v91[0] = v84;
  v28 = [MEMORY[0x1E695DEC8] arrayWithObjects:v91 count:1];
  v29 = [(MFIMAPConnection *)self _responseFromSendingCommands:v28];
  selfCopy = self;
  v30 = [v29 responseType] == 2;

  if (v30)
  {
    untaggedResponses = [(_MFIMAPCommandParameters *)v84 untaggedResponses];
    v87 = [untaggedResponses count];

    array = [MEMORY[0x1E695DF70] array];
    selfCopy3 = self;
    if (v87)
    {
      v88 = 0;
      while (1)
      {
        untaggedResponses2 = [(_MFIMAPCommandParameters *)v84 untaggedResponses];
        v34 = [untaggedResponses2 objectAtIndex:v88];

        responseType = [v34 responseType];
        v36 = responseType;
        if ((responseType - 15) <= 1)
        {
          break;
        }

        if (v82 && responseType == 13)
        {
          statusEntries = [v34 statusEntries];
          mailboxName = [v34 mailboxName];
          [v82 setObject:statusEntries forKeyedSubscript:mailboxName];

          untaggedResponses3 = [(_MFIMAPCommandParameters *)v84 untaggedResponses];
          [untaggedResponses3 removeObjectAtIndex:v88];

LABEL_70:
          --v87;
          goto LABEL_71;
        }

        ++v88;
LABEL_71:

        selfCopy3 = selfCopy;
        if (v88 >= v87)
        {
          goto LABEL_74;
        }
      }

      mailboxAttributes = [v34 mailboxAttributes];
      mailboxName2 = [v34 mailboxName];
      separator = [v34 separator];
      if (separator)
      {
        [(MFIMAPConnection *)selfCopy mf_lock];
        v37 = selfCopy;
        if (!selfCopy->_separatorChar)
        {
          v38 = [separator copy];
          separatorChar = selfCopy->_separatorChar;
          selfCopy->_separatorChar = v38;

          v37 = selfCopy;
        }

        [(MFIMAPConnection *)v37 mf_unlock];
      }

      if (mailboxName2)
      {
        if ([mailboxName2 length] && (!-[__CFString length](theString, "length") || objc_msgSend(mailboxName2, "hasPrefix:", theString)))
        {
          array2 = array;
          v41 = [(__CFString *)theString length];
          if ([(NSString *)selfCopy->_serverNamespace length])
          {
            v73 = [mailboxName2 hasPrefix:selfCopy->_serverNamespace] ^ 1;
          }

          else
          {
            v73 = 0;
          }

          if (separator)
          {
            [mailboxName2 rangeOfString:separator options:8 range:{v41, objc_msgSend(mailboxName2, "length") - v41}];
            if (v45)
            {
              v41 += [separator length];
            }
          }

          if (v41)
          {
            v46 = [mailboxName2 substringFromIndex:v41];

            mailboxName2 = v46;
          }

          if (!separator)
          {
            v90 = mailboxName2;
            v47 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v90 count:1];
            v51 = 1;
LABEL_51:
            dictionary = 0;
            v53 = 0;
            while (2)
            {
              v54 = [v47 objectAtIndex:v53];
              v55 = [array2 mf_indexOfMailboxDictionaryWithName:v54];
              if (v55 == 0x7FFFFFFFFFFFFFFFLL)
              {

                goto LABEL_55;
              }

              v56 = [array2 objectAtIndex:v55];

              dictionary = v56;
              if (!v56)
              {
LABEL_55:
                dictionary = [MEMORY[0x1E695DF90] dictionary];
                [dictionary setObject:v54 forKey:@"MailboxName"];
                if (v53 + 1 < v51)
                {
                  v57 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:2];
                  [dictionary setObject:v57 forKey:@"IMAPMailboxAttributes"];

                  v58 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:2];
                  [dictionary setObject:v58 forKey:@"MailboxAttributes"];
                }

                [array2 ef_insertObject:dictionary usingSortFunction:_MFCompareMailboxDictionariesByName context:0 allowDuplicates:1];
              }

              v59 = [dictionary objectForKey:@"MailboxChildren"];

              array2 = v59;
              if (!((v59 != 0) | (options != 2) | mailboxAttributes & 1))
              {
                array2 = [MEMORY[0x1E695DF70] array];
                [dictionary setObject:array2 forKey:@"MailboxChildren"];
              }

              if (v51 == ++v53)
              {
                goto LABEL_61;
              }

              continue;
            }
          }

          v47 = [mailboxName2 componentsSeparatedByString:?];
          v48 = [v47 count];
          if (v48)
          {
            lastObject = [v47 lastObject];
            v50 = [lastObject isEqualToString:&stru_1F273A5E0];

            v51 = v48 - (v50 & 1);
            if (v48 != (v50 & 1))
            {
              goto LABEL_51;
            }
          }

          dictionary = 0;
LABEL_61:
          v60 = v47;
          v61 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:mailboxAttributes];
          [dictionary setObject:v61 forKey:@"IMAPMailboxAttributes"];

          v62 = [dictionary objectForKey:@"MailboxAttributes"];
          v63 = [v62 unsignedIntValue] & 0xFFFFFFFD | (2 * ((mailboxAttributes >> 1) & 1));
          if (v73)
          {
            v64 = v63 | 0x80;
          }

          else
          {
            v64 = v63;
          }

          v65 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v64];
          [dictionary setObject:v65 forKey:@"MailboxAttributes"];

          if (v36 == 15)
          {
            extraAttributes = [v34 extraAttributes];
            if ([extraAttributes count])
            {
              [dictionary setObject:extraAttributes forKey:@"MailboxExtraAttributes"];
            }
          }
        }
      }

      else
      {
        mailboxName2 = 0;
      }

      untaggedResponses4 = [(_MFIMAPCommandParameters *)v84 untaggedResponses];
      [untaggedResponses4 removeObjectAtIndex:v88];

      goto LABEL_70;
    }
  }

  else
  {
    array = 0;
    selfCopy3 = self;
  }

LABEL_74:
  v89 = v84;
  v68 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v89 count:1];
  [(MFIMAPConnection *)selfCopy3 didFinishCommands:v68];

LABEL_75:
  v69 = v82;
  if (mailbox)
  {
    v70 = v82;
    v69 = v82;
    *mailbox = v82;
  }

  v71 = *MEMORY[0x1E69E9840];

  return array;
}

- (id)subscribedListingForMailbox:(id)mailbox options:(int64_t)options
{
  v4 = [(MFIMAPConnection *)self _listingForMailbox:mailbox options:options getSpecialUse:0 statusDataItems:0 statusEntriesByMailbox:0 withCommand:7];

  return v4;
}

- (void)close
{
  v11[1] = *MEMORY[0x1E69E9840];
  v3 = [[_MFIMAPCommandParameters alloc] initWithCommand:18];
  [(MFIMAPConnection *)self mf_lock];
  v11[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v11 count:1];
  v5 = [(MFIMAPConnection *)self _responseFromSendingCommands:v4];
  v6 = [v5 responseType] == 2;

  if (v6)
  {
    *(self + 152) = *(self + 152) & 0xF8 | 2;
    selectedMailbox = self->_selectedMailbox;
    self->_selectedMailbox = 0;
  }

  [(MFIMAPConnection *)self mf_unlock];
  v10 = v3;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v10 count:1];
  [(MFIMAPConnection *)self didFinishCommands:v8];

  v9 = *MEMORY[0x1E69E9840];
}

- (BOOL)closeAndLogout
{
  v9[2] = *MEMORY[0x1E69E9840];
  v3 = [[_MFIMAPCommandParameters alloc] initWithCommand:18];
  v9[0] = v3;
  v4 = [[_MFIMAPCommandParameters alloc] initWithCommand:2];
  v9[1] = v4;
  v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:2];

  [(MFIMAPConnection *)self mf_lock];
  v6 = [(MFIMAPConnection *)self _sendCommands:v5 response:0];
  [(MFIMAPConnection *)self disconnectAndNotifyDelegate:1];
  [(MFIMAPConnection *)self mf_unlock];
  [(MFIMAPConnection *)self didFinishCommands:v5];

  v7 = *MEMORY[0x1E69E9840];
  return v6 != 0;
}

- (void)unselect
{
  v12[1] = *MEMORY[0x1E69E9840];
  if ([(MFIMAPConnection *)self supportsCapability:9])
  {
    v3 = [[_MFIMAPCommandParameters alloc] initWithCommand:25];
    [(MFIMAPConnection *)self mf_lock];
    v12[0] = v3;
    v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
    v5 = [(MFIMAPConnection *)self _responseFromSendingCommands:v4];
    v6 = [v5 responseType] == 2;

    if (v6)
    {
      *(self + 152) = *(self + 152) & 0xF8 | 2;
      selectedMailbox = self->_selectedMailbox;
      self->_selectedMailbox = 0;
    }

    [(MFIMAPConnection *)self mf_unlock];
    v11 = v3;
    v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
    [(MFIMAPConnection *)self didFinishCommands:v8];

    v9 = *MEMORY[0x1E69E9840];
  }

  else
  {
    v10 = *MEMORY[0x1E69E9840];

    [(MFIMAPConnection *)self close];
  }
}

- (void)handleBytesAvailable
{
  streamEventQueue = self->_streamEventQueue;
  if (!streamEventQueue)
  {
    v4 = objc_alloc_init(MFInvocationQueue);
    v5 = self->_streamEventQueue;
    self->_streamEventQueue = v4;

    streamEventQueue = self->_streamEventQueue;
  }

  v6 = [MEMORY[0x1E695DF50] mf_invocationWithSelector:sel__handleBytesAvailableInternal target:self];
  [(MFInvocationQueue *)streamEventQueue addInvocation:?];
}

- (void)_handleBytesAvailableInternal
{
  v15 = *MEMORY[0x1E69E9840];
  [(MFIMAPConnection *)self mf_lock];
  if ([(MFConnection *)self hasBytesAvailable])
  {
    *&v3 = 134218242;
    v10 = v3;
    do
    {
      v4 = [[MFIMAPResponse alloc] initWithConnection:self responseConsumer:0];
      if ([(MFIMAPResponse *)v4 isUntagged]&& (*&self->_delegateState & 2) != 0)
      {
        if ([(MFIMAPConnection *)self isIdle])
        {
          v5 = +[MFIMAPConnection log];
          if (os_log_type_enabled(v5, OS_LOG_TYPE_DEFAULT))
          {
            *buf = v10;
            selfCopy = self;
            v13 = 2112;
            v14 = v4;
            _os_log_impl(&dword_1B0389000, v5, OS_LOG_TYPE_DEFAULT, "Idle: connection <%p> received response while idling: %@", buf, 0x16u);
          }
        }

        v6 = [[_MFIMAPCommandParameters alloc] initWithCommand:28];
        WeakRetained = objc_loadWeakRetained(&self->_delegate);
        v8 = WeakRetained;
        if (WeakRetained && (*&self->_delegateState & 2) != 0)
        {
          [WeakRetained connection:self didReceiveResponse:v4 forCommand:v6];
        }
      }
    }

    while ([(MFConnection *)self hasBytesAvailable]);
  }

  [(MFIMAPConnection *)self mf_unlock];
  v9 = *MEMORY[0x1E69E9840];
}

- (void)locked_startIdle
{
  v29 = *MEMORY[0x1E69E9840];
  v22[0] = MEMORY[0x1E69E9820];
  v22[1] = 3221225472;
  v22[2] = __36__MFIMAPConnection_locked_startIdle__block_invoke;
  v22[3] = &unk_1E7AA2BD0;
  v22[4] = self;
  v3 = [MEMORY[0x1E699B7C8] lazyFutureWithBlock:v22];
  if (![(MFIMAPConnection *)self isIdle]&& [(MFIMAPConnection *)self supportsCapability:5])
  {
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v5 = WeakRetained;
    if (WeakRetained && (*&self->_delegateState & 0x80000000) != 0)
    {
      v8 = [WeakRetained shouldStartIdleForConnection:self];

      if (v8)
      {
        v9 = +[MFIMAPConnection log];
        if (os_log_type_enabled(v9, OS_LOG_TYPE_DEFAULT))
        {
          delegate = [(MFIMAPConnection *)self delegate];
          *buf = 134218242;
          selfCopy3 = self;
          v27 = 2112;
          v28 = delegate;
          _os_log_impl(&dword_1B0389000, v9, OS_LOG_TYPE_DEFAULT, "Idle: connection <%p> starting IDLE state for delegate %@", buf, 0x16u);
        }

        v6 = [[_MFIMAPCommandParameters alloc] initWithCommand:28];
        v24 = v6;
        v11 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
        v21 = 0;
        v12 = [(MFIMAPConnection *)self _sendCommands:v11 response:&v21];
        v13 = v21;

        if (v12)
        {
          v14 = [(MFIMAPConnection *)self _copyNextTaggedOrContinuationResponseForCommand:v6];

          if ([v14 responseType] == 1)
          {
            self->_idleCommandSequenceNumber = [(_MFIMAPCommandParameters *)v6 sequenceNumber];
            v13 = v14;
            v15 = [v3 result:0];
          }

          else
          {
            v13 = v14;
          }
        }

        v23 = v6;
        v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
        [(MFIMAPConnection *)self didFinishCommands:v16];

        if ([(MFIMAPConnection *)self isIdle])
        {
          [(MFIMAPConnection *)self locked_scheduleIdleResetAfterDelay:1740.0];
        }

        else
        {
          v17 = +[MFIMAPConnection log];
          if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
          {
            delegate2 = [(MFIMAPConnection *)self delegate];
            *buf = 134218242;
            selfCopy3 = self;
            v27 = 2112;
            v28 = delegate2;
            _os_log_impl(&dword_1B0389000, v17, OS_LOG_TYPE_DEFAULT, "Idle: connection <%p> failed to enter IDLE state: %@", buf, 0x16u);
          }
        }

        goto LABEL_21;
      }
    }

    else
    {
    }

    v6 = +[MFIMAPConnection log];
    if (os_log_type_enabled(&v6->super, OS_LOG_TYPE_DEFAULT))
    {
      delegate3 = [(MFIMAPConnection *)self delegate];
      *buf = 134218242;
      selfCopy3 = self;
      v27 = 2112;
      v28 = delegate3;
      _os_log_impl(&dword_1B0389000, &v6->super, OS_LOG_TYPE_DEFAULT, "Idle: connection <%p> delegate rejected starting IDLE state: %@", buf, 0x16u);
    }

LABEL_21:
  }

  v19 = [v3 result:0];

  v20 = *MEMORY[0x1E69E9840];
}

id __36__MFIMAPConnection_locked_startIdle__block_invoke(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(v1 + 24);
  v5[0] = MEMORY[0x1E69E9820];
  v5[1] = 3221225472;
  v5[2] = __36__MFIMAPConnection_locked_startIdle__block_invoke_2;
  v5[3] = &unk_1E7AA25C0;
  v5[4] = v1;
  [v2 registerForBytesAvailableWithHandler:v5];
  v3 = [MEMORY[0x1E695DFB0] null];

  return v3;
}

- (void)locked_finishIdle
{
  v14 = *MEMORY[0x1E69E9840];
  [(MFNWConnectionWrapper *)self->super._socket unregisterForBytesAvailable];
  idleSubscriptionCancelable = [(MFIMAPConnection *)self idleSubscriptionCancelable];
  [idleSubscriptionCancelable cancel];

  if ([(MFIMAPConnection *)self isIdle])
  {
    v4 = +[MFIMAPConnection log];
    if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
    {
      delegate = [(MFIMAPConnection *)self delegate];
      *buf = 134218242;
      selfCopy = self;
      v12 = 2112;
      v13 = delegate;
      _os_log_impl(&dword_1B0389000, v4, OS_LOG_TYPE_DEFAULT, "Idle: connection <%p> leaving IDLE state for delegate: %@", buf, 0x16u);
    }

    v6 = [[_MFIMAPCommandParameters alloc] initWithCommand:29 sequenceNumber:self->_idleCommandSequenceNumber];
    self->_idleCommandSequenceNumber = 0;
    v9 = v6;
    v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v9 count:1];
    [(MFIMAPConnection *)self _sendCommands:v7 response:0];
  }

  v8 = *MEMORY[0x1E69E9840];
}

- (void)finishIdle
{
  [(MFIMAPConnection *)self mf_lock];
  [(MFIMAPConnection *)self locked_finishIdle];

  [(MFIMAPConnection *)self mf_unlock];
}

- (void)locked_scheduleIdle
{
  if ([(MFIMAPConnection *)self hasValidConnection])
  {
    selfCopy = self;
    v4 = *(selfCopy + 64) | (*(selfCopy + 130) << 16);
    if ((*(selfCopy + 64) & 0x20) != 0)
    {
      v8 = selfCopy;
      currentDevice = [MEMORY[0x1E699B7B0] currentDevice];
      v6 = [currentDevice isPlatform:2];

      if ((v6 & 1) == 0)
      {
        socket = v8->super._socket;
        v9[0] = MEMORY[0x1E69E9820];
        v9[1] = 3221225472;
        v9[2] = __39__MFIMAPConnection_locked_scheduleIdle__block_invoke;
        v9[3] = &unk_1E7AA25C0;
        v9[4] = v8;
        [(MFNWConnectionWrapper *)socket registerForBytesAvailableWithHandler:v9];
        if (v8->_selectedMailbox)
        {
          [(MFIMAPConnection *)v8 locked_scheduleIdleResetAfterDelay:2.0];
        }
      }
    }

    else
    {
    }
  }
}

- (void)scheduleIdleReset
{
  [(MFIMAPConnection *)self mf_lock];
  if ([(MFIMAPConnection *)self hasValidConnection])
  {
    v3 = *(self + 64) | (*(self + 130) << 16);
    if ((*(self + 64) & 0x20) != 0)
    {
      currentDevice = [MEMORY[0x1E699B7B0] currentDevice];
      v5 = [currentDevice isPlatform:2];

      if ((v5 & 1) == 0)
      {
        if (self->_selectedMailbox)
        {
          [(MFIMAPConnection *)self locked_scheduleIdleResetAfterDelay:2.0];
        }
      }
    }
  }

  [(MFIMAPConnection *)self mf_unlock];
}

- (void)locked_scheduleIdleResetAfterDelay:(double)delay
{
  objc_initWeak(&location, self);
  idleSubscriptionCancelable = [(MFIMAPConnection *)self idleSubscriptionCancelable];
  [idleSubscriptionCancelable cancel];

  v6 = [MEMORY[0x1E699B978] globalAsyncSchedulerWithQualityOfService:17];
  v8[0] = MEMORY[0x1E69E9820];
  v8[1] = 3221225472;
  v8[2] = __55__MFIMAPConnection_locked_scheduleIdleResetAfterDelay___block_invoke;
  v8[3] = &unk_1E7AA2BF8;
  objc_copyWeak(v9, &location);
  v9[1] = *&delay;
  v7 = [v6 afterDelay:v8 performBlock:delay];
  [(MFIMAPConnection *)self setIdleSubscriptionCancelable:v7];

  objc_destroyWeak(v9);
  objc_destroyWeak(&location);
}

void __55__MFIMAPConnection_locked_scheduleIdleResetAfterDelay___block_invoke(uint64_t a1)
{
  v20 = *MEMORY[0x1E69E9840];
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = +[MFIMAPConnection log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 40);
    v5 = [WeakRetained delegate];
    v14 = 134218498;
    v15 = WeakRetained;
    v16 = 2048;
    v17 = v4;
    v18 = 2112;
    v19 = v5;
    _os_log_impl(&dword_1B0389000, v3, OS_LOG_TYPE_DEFAULT, "Idle: connection <%p> timer fired for delayed IDLE reset after %0.2fs delay: %@", &v14, 0x20u);
  }

  [WeakRetained mf_lock];
  v6 = WeakRetained;
  v7 = v6;
  v8 = v6[64] | (*(v6 + 130) << 16);
  if ((v6[64] & 0x20) != 0)
  {
    v9 = [MEMORY[0x1E699B7B0] currentDevice];
    v10 = [v9 isPlatform:2];

    if ((v10 & 1) == 0)
    {
      v11 = +[MFIMAPConnection log];
      if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
      {
        v12 = [v7 delegate];
        v14 = 134218242;
        v15 = v7;
        v16 = 2112;
        v17 = v12;
        _os_log_impl(&dword_1B0389000, v11, OS_LOG_TYPE_DEFAULT, "Idle: connection <%p> resetting IDLE state: %@", &v14, 0x16u);
      }

      [v7 locked_finishIdle];
      [v7 locked_startIdle];
    }
  }

  else
  {
  }

  [v7 mf_unlock];

  v13 = *MEMORY[0x1E69E9840];
}

- (BOOL)expunge
{
  v12[1] = *MEMORY[0x1E69E9840];
  v3 = [[_MFIMAPCommandParameters alloc] initWithCommand:16];
  v12[0] = v3;
  v4 = [MEMORY[0x1E695DEC8] arrayWithObjects:v12 count:1];
  v5 = [(MFIMAPConnection *)self _responseFromSendingCommands:v4];

  if ([v5 responseType] == 4)
  {
    v6 = [(MFIMAPConnection *)self _errorForResponse:v5 commandParams:v3];
  }

  else
  {
    v6 = 0;
  }

  v11 = v3;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v11 count:1];
  [(MFIMAPConnection *)self didFinishCommands:v7];

  if (v6)
  {
    v8 = +[MFActivityMonitor currentMonitor];
    [v8 setError:v6];
  }

  v9 = *MEMORY[0x1E69E9840];
  return 0;
}

- (BOOL)expungeUIDs:(id)ds
{
  v23[1] = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  if (![(MFIMAPConnection *)self supportsCapability:3])
  {
    [MFError errorWithDomain:@"MFMessageErrorDomain" code:1029 localizedDescription:@"*** Server doesn't support UIDPLUS"];
    v17 = v12 = 0;
    if (!v17)
    {
      goto LABEL_11;
    }

LABEL_9:
    v18 = +[MFActivityMonitor currentMonitor];
    [v18 setError:v17];

    goto LABEL_11;
  }

  if (![dsCopy count])
  {
    v12 = 1;
    goto LABEL_11;
  }

  v5 = [(MFIMAPConnection *)self messageSetForUIDs:dsCopy];
  v6 = [_MFIMAPCommandParameters alloc];
  v23[0] = v5;
  v7 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v8 = [(_MFIMAPCommandParameters *)v6 initWithCommand:17 arguments:v7];

  v22 = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
  v10 = [(MFIMAPConnection *)self _responseFromSendingCommands:v9];

  responseType = [v10 responseType];
  v12 = responseType == 2;
  v21 = v8;
  v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
  [(MFIMAPConnection *)self didFinishCommands:v13];

  if (responseType != 2 && (+[MFActivityMonitor currentMonitor](MFActivityMonitor, "currentMonitor"), v14 = objc_claimAutoreleasedReturnValue(), [v14 error], v15 = objc_claimAutoreleasedReturnValue(), v16 = v15 == 0, v15, v14, v16))
  {
    v17 = [(MFIMAPConnection *)self _errorForResponse:v10 commandParams:v8];
  }

  else
  {
    v17 = 0;
  }

  if (v17)
  {
    goto LABEL_9;
  }

LABEL_11:

  v19 = *MEMORY[0x1E69E9840];
  return v12;
}

- (void)fetchStatusForMailboxes:(id)mailboxes args:(id)args
{
  mailboxesCopy = mailboxes;
  v7 = [(MFIMAPConnection *)self parenthesizedStringWithObjects:args];
  selfCopy = self;
  v23 = mailboxesCopy;
  v22 = v7;
  v9 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:30];
  v10 = [v23 count];
  v11 = objc_alloc_init(MEMORY[0x1E695DF70]);
  [v11 addObject:&stru_1F273A5E0];
  if (v22)
  {
    [v11 addObject:v22];
  }

  if (v10)
  {
    v12 = 0;
    while (1)
    {
      v13 = [v23 objectAtIndexedSubscript:v12];
      separatorChar = [(MFIMAPConnection *)selfCopy separatorChar];
      if ([v13 hasPrefix:separatorChar])
      {
        v15 = [v13 substringFromIndex:{objc_msgSend(separatorChar, "length")}];

        v13 = v15;
      }

      v16 = MFIMAPStringFromMailboxName(v13);
      [v11 replaceObjectAtIndex:0 withObject:v16];

      v17 = [_MFIMAPCommandParameters alloc];
      v18 = [v11 copy];
      v19 = [(_MFIMAPCommandParameters *)v17 initWithCommand:8 arguments:v18];
      [v9 addObject:v19];

      if (v12 == 29 || v10 - 1 == v12)
      {
        v20 = [(MFIMAPConnection *)selfCopy _responseFromSendingCommands:v9];
        responseType = [v20 responseType];

        [(MFIMAPConnection *)selfCopy didFinishCommands:v9];
        [v9 removeAllObjects];
        if (responseType != 2)
        {
          break;
        }
      }

      ++v12;

      if (v10 == v12)
      {
        goto LABEL_13;
      }
    }
  }

LABEL_13:
}

- (BOOL)selectMailbox:(id)mailbox withAccount:(id)account
{
  mailboxCopy = mailbox;
  accountCopy = account;
  v8 = _processSelectCommand(self, 13, mailboxCopy);
  if (v8)
  {
    [(MFIMAPConnection *)self _updateSearchCapabilityWithAccount:accountCopy];
  }

  return v8;
}

- (BOOL)createMailbox:(id)mailbox
{
  v10[1] = *MEMORY[0x1E69E9840];
  mailboxCopy = mailbox;
  v5 = MFIMAPStringFromMailboxName(mailboxCopy);
  v10[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v10 count:1];

  v7 = [(MFIMAPConnection *)self _sendMailboxCommand:10 withArguments:v6];
  if (v7)
  {
    [(MFIMAPConnection *)self _sendMailboxCommand:14 withArguments:v6];
  }

  v8 = *MEMORY[0x1E69E9840];
  return v7;
}

- (BOOL)deleteMailbox:(id)mailbox
{
  v9[1] = *MEMORY[0x1E69E9840];
  mailboxCopy = mailbox;
  v5 = MFIMAPStringFromMailboxName(mailboxCopy);
  v9[0] = v5;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v9 count:1];

  [(MFIMAPConnection *)self _sendMailboxCommand:15 withArguments:v6];
  LOBYTE(self) = [(MFIMAPConnection *)self _sendMailboxCommand:11 withArguments:v6];

  v7 = *MEMORY[0x1E69E9840];
  return self;
}

- (BOOL)renameMailbox:(id)mailbox toMailbox:(id)toMailbox
{
  v18[2] = *MEMORY[0x1E69E9840];
  mailboxCopy = mailbox;
  toMailboxCopy = toMailbox;
  v8 = MFIMAPStringFromMailboxName(mailboxCopy);

  v9 = MFIMAPStringFromMailboxName(toMailboxCopy);

  v18[0] = v8;
  v18[1] = v9;
  v10 = [MEMORY[0x1E695DEC8] arrayWithObjects:v18 count:2];
  v11 = [(MFIMAPConnection *)self _sendMailboxCommand:12 withArguments:v10];
  if (v11)
  {
    v17 = v8;
    v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v17 count:1];
    [(MFIMAPConnection *)self _sendMailboxCommand:15 withArguments:v12];

    v16 = v9;
    v13 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v16 count:1];
    [(MFIMAPConnection *)self _sendMailboxCommand:14 withArguments:v13];
  }

  v14 = *MEMORY[0x1E69E9840];
  return v11;
}

- (BOOL)_sendMailboxCommand:(int64_t)command withArguments:(id)arguments
{
  v19[1] = *MEMORY[0x1E69E9840];
  argumentsCopy = arguments;
  v7 = [[_MFIMAPCommandParameters alloc] initWithCommand:command arguments:argumentsCopy];
  v19[0] = v7;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v19 count:1];
  v9 = [(MFIMAPConnection *)self _responseFromSendingCommands:v8];

  responseType = [v9 responseType];
  if (responseType != 2)
  {
    v11 = +[MFActivityMonitor currentMonitor];
    error = [v11 error];
    v13 = error == 0;

    if (v13)
    {
      v14 = [(MFIMAPConnection *)self _errorForResponse:v9 commandParams:v7];
    }
  }

  v18 = v7;
  v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v18 count:1];
  [(MFIMAPConnection *)self didFinishCommands:v15];

  v16 = *MEMORY[0x1E69E9840];
  return responseType == 2;
}

- (id)copyArgumentForSearchTerm:(id)term
{
  termCopy = term;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v4 = sIMAPNeedsLiteralCharacterSet;
    v8.length = [(__CFString *)termCopy length];
    v8.location = 0;
    if (CFStringFindCharacterFromSet(termCopy, v4, v8, 0, 0))
    {
      v5 = [(__CFString *)termCopy dataUsingEncoding:4 allowLossyConversion:0];
LABEL_8:
      v6 = v5;
      goto LABEL_9;
    }

    v6 = _IMAPCreateQuotedString(termCopy);
    if (!v6)
    {
LABEL_7:
      v5 = [(__CFString *)termCopy copy];
      goto LABEL_8;
    }
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      goto LABEL_7;
    }

    v6 = 0;
  }

LABEL_9:

  return v6;
}

- (id)searchUidSet:(id)set forTerms:(id)terms success:(BOOL *)success
{
  setCopy = set;
  termsCopy = terms;
  if ([(MFIMAPConnection *)self supportsCapability:15])
  {
    v10 = [(MFIMAPConnection *)self eSearchIDSet:setCopy areMessageSequenceNumbers:0 forTerms:termsCopy success:success returning:4];
    v11 = [v10 objectForKey:@"IMAPESearchAllKey"];
    if (v11)
    {
      array = [MEMORY[0x1E695DF70] array];
      v13 = objc_autoreleasePoolPush();
      for (i = [v11 firstIndex]; i != 0x7FFFFFFFFFFFFFFFLL; i = objc_msgSend(v11, "indexGreaterThanIndex:", i))
      {
        v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i];
        [array addObject:v15];
      }

      objc_autoreleasePoolPop(v13);
    }

    else
    {
      array = 0;
    }
  }

  else
  {
    v19 = 0;
    v16 = _doUidSearch(self, setCopy, termsCopy, &v19, success, 0);
    v17 = v19;
    array = v17;
    if ((v16 & 1) == 0)
    {

      array = 0;
    }
  }

  return array;
}

- (id)searchIDSet:(id)set forTerms:(id)terms success:(BOOL *)success
{
  setCopy = set;
  termsCopy = terms;
  if ([(MFIMAPConnection *)self supportsCapability:15])
  {
    v10 = [(MFIMAPConnection *)self eSearchIDSet:setCopy areMessageSequenceNumbers:1 forTerms:termsCopy success:success returning:4];
    v11 = [v10 objectForKey:@"IMAPESearchAllKey"];
    if (v11)
    {
      array = [MEMORY[0x1E695DF70] array];
      v13 = objc_autoreleasePoolPush();
      for (i = [v11 firstIndex]; i != 0x7FFFFFFFFFFFFFFFLL; i = objc_msgSend(v11, "indexGreaterThanIndex:", i))
      {
        v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i];
        [array addObject:v15];
      }

      objc_autoreleasePoolPop(v13);
    }

    else
    {
      array = 0;
    }
  }

  else
  {
    v19 = 0;
    v16 = _doUidSearch(self, setCopy, termsCopy, &v19, success, 1);
    v17 = v19;
    array = v17;
    if ((v16 & 1) == 0)
    {

      array = 0;
    }
  }

  return array;
}

- (unint64_t)countForSearchOfIDSet:(id)set forTerms:(id)terms success:(BOOL *)success
{
  setCopy = set;
  termsCopy = terms;
  if ([(MFIMAPConnection *)self supportsCapability:15])
  {
    v10 = [(MFIMAPConnection *)self eSearchIDSet:setCopy areMessageSequenceNumbers:1 forTerms:termsCopy success:success returning:8];
    v11 = [v10 objectForKey:@"IMAPESearchCountKey"];
    v12 = v11;
    if (v11)
    {
      unsignedIntValue = [v11 unsignedIntValue];
    }

    else
    {
      if (success)
      {
        *success = 0;
      }

      unsignedIntValue = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v10 = [(MFIMAPConnection *)self searchIDSet:setCopy forTerms:termsCopy success:success];
    unsignedIntValue = [v10 count];
  }

  return unsignedIntValue;
}

- (unint64_t)countForSearchOfUidSet:(id)set forTerms:(id)terms success:(BOOL *)success
{
  setCopy = set;
  termsCopy = terms;
  if ([(MFIMAPConnection *)self supportsCapability:15])
  {
    v10 = [(MFIMAPConnection *)self eSearchIDSet:setCopy areMessageSequenceNumbers:0 forTerms:termsCopy success:success returning:8];
    v11 = [v10 objectForKey:@"IMAPESearchCountKey"];
    v12 = v11;
    if (v11)
    {
      unsignedIntValue = [v11 unsignedIntValue];
    }

    else
    {
      if (success)
      {
        *success = 0;
      }

      unsignedIntValue = 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v10 = [(MFIMAPConnection *)self searchUidSet:setCopy forTerms:termsCopy success:success];
    unsignedIntValue = [v10 count];
  }

  return unsignedIntValue;
}

- (void)_updateSearchCapabilityWithAccount:(id)account
{
  accountCopy = account;
  [(MFIMAPConnection *)self mf_lock];
  verifiedESearchResponse = self->_verifiedESearchResponse;
  [(MFIMAPConnection *)self mf_unlock];
  if (!verifiedESearchResponse && [(MFIMAPConnection *)self supportsCapability:15])
  {
    v10[0] = MEMORY[0x1E69E9820];
    v10[1] = 3221225472;
    v10[2] = __55__MFIMAPConnection__updateSearchCapabilityWithAccount___block_invoke;
    v10[3] = &unk_1E7AA2C20;
    v10[4] = self;
    v6 = [accountCopy verifyESearchSupportWithBlock:v10];
    [(MFIMAPConnection *)self mf_lock];
    if ((v6 & 1) == 0)
    {
      v7 = +[MFIMAPConnection log];
      if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
      {
        [MFIMAPConnection _updateSearchCapabilityWithAccount:v7];
      }

      v8 = *(self + 64);
      v9 = v8 & 0xFFFF7FFF | (*(self + 130) << 16);
      *(self + 64) = v8 & 0x7FFF;
      *(self + 130) = BYTE2(v9);
    }

    self->_verifiedESearchResponse = 1;
    [(MFIMAPConnection *)self mf_unlock];
  }
}

BOOL __55__MFIMAPConnection__updateSearchCapabilityWithAccount___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) countForSearchOfIDSet:@"1:*" forTerms:&unk_1F2774C68 success:0];
  if (v2 == 0x7FFFFFFFFFFFFFFFLL)
  {
    return 0;
  }

  v4 = v2;
  v5 = [*(a1 + 32) eSearchIDSet:@"1:*" areMessageSequenceNumbers:1 forTerms:&unk_1F2774C68 success:0 returning:4];
  v6 = [v5 objectForKeyedSubscript:@"IMAPESearchAllKey"];
  v7 = v6;
  if (v6)
  {
    v3 = v4 == [v6 count];
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

- (BOOL)storeFlags:(id)flags state:(BOOL)state forMessageSet:(id)set
{
  stateCopy = state;
  v30 = *MEMORY[0x1E69E9840];
  flagsCopy = flags;
  setCopy = set;
  v10 = @"-FLAGS.SILENT";
  if (stateCopy)
  {
    v10 = @"+FLAGS.SILENT";
  }

  v27 = setCopy;
  v28 = v10;
  v24 = v28;
  v11 = [(MFIMAPConnection *)self parenthesizedStringWithObjects:flagsCopy];
  v29 = v11;
  v12 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v27 count:3];

  v13 = [[_MFIMAPCommandParameters alloc] initWithCommand:22 arguments:v12];
  v26 = v13;
  v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
  v15 = [(MFIMAPConnection *)self _responseFromSendingCommands:v14];
  responseType = [v15 responseType];

  if (responseType == 2)
  {
    v17 = objc_alloc_init(MFIMAPResponse);
    v18 = [[MFIMAPFetchResult alloc] initWithType:10];
    [(MFIMAPFetchResult *)v18 setFlagsArray:flagsCopy];
    [(MFIMAPResponse *)v17 setResponseType:24];
    [(MFIMAPResponse *)v17 setUidFlagsChange:stateCopy];
    [(MFIMAPResponse *)v17 setUids:setCopy];
    [(MFIMAPResponse *)v17 setFlagsFetchResult:v18];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v20 = WeakRetained;
    if (WeakRetained && (*&self->_delegateState & 1) != 0)
    {
      [WeakRetained connection:self shouldHandleUntaggedResponse:v17 forCommand:v13];
    }
  }

  v25 = v13;
  v21 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
  [(MFIMAPConnection *)self didFinishCommands:v21];

  v22 = *MEMORY[0x1E69E9840];
  return responseType == 2;
}

- (BOOL)deleteMessagesOlderThanNumberOfDays:(int)days
{
  v27[3] = *MEMORY[0x1E69E9840];
  if (days <= 0)
  {
    v13 = [(MFIMAPConnection *)self messageSetForRange:0xFFFFFFFF00000001];
    v27[0] = v13;
    v27[1] = @"+FLAGS.SILENT";
    v27[2] = @"(\\Deleted)";
    v5 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:3];

    v7 = [[_MFIMAPCommandParameters alloc] initWithCommand:22 arguments:v5];
    v26 = v7;
    v14 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
    v15 = [(MFIMAPConnection *)self _responseFromSendingCommands:v14];

    v25 = v7;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v25 count:1];
    [(MFIMAPConnection *)self didFinishCommands:v9];
  }

  else
  {
    v5 = [MEMORY[0x1E695DEE8] calendarWithIdentifier:*MEMORY[0x1E695D850]];
    date = [MEMORY[0x1E695DF00] date];
    v7 = [v5 dateByAddingUnit:16 value:1 - days toDate:date options:0];

    v24[0] = @"BEFORE";
    v8 = MFIMAPDateSearchStringForDate(v7);
    v24[1] = v8;
    v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:2];

    v10 = [(MFIMAPConnection *)self searchUidSet:0 forTerms:v9 success:0];
    v11 = [v10 count];
    if (v11)
    {
      v12 = MFCreateArrayForMessageFlags(2, 1);
      if (v11 > 0x64)
      {
        v23 = v5;
        Mutable = CFArrayCreateMutable(0, 100, 0);
        v17 = 0;
        v18 = 100;
        do
        {
          CFArrayRemoveAllValues(Mutable);
          if (v11 - v17 >= 0x64)
          {
            v19.length = 100;
          }

          else
          {
            v19.length = v11 - v17;
          }

          v19.location = v17;
          CFArrayAppendArray(Mutable, v10, v19);
          [(MFIMAPConnection *)self storeFlags:v12 state:1 forUIDs:Mutable];
          v17 = v18;
          v20 = v11 > v18;
          v18 += 100;
        }

        while (v20);
        v5 = v23;
        CFRelease(Mutable);
      }

      else
      {
        [(MFIMAPConnection *)self storeFlags:v12 state:1 forUIDs:v10];
      }
    }
  }

  v21 = *MEMORY[0x1E69E9840];
  return 1;
}

- (id)_responseFromSendingCommand:(id)command andPossiblyCreateMailbox:(id)mailbox
{
  v24[1] = *MEMORY[0x1E69E9840];
  commandCopy = command;
  mailboxCopy = mailbox;
  v24[0] = commandCopy;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v24 count:1];
  v9 = [(MFIMAPConnection *)self _responseFromSendingCommands:v8];

  if ([v9 responseType] == 4)
  {
    v10 = [v9 responseCode] == 8;
    if (v9)
    {
LABEL_12:
      if (!v10)
      {
        goto LABEL_18;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v10 = 0;
    if (v9)
    {
      goto LABEL_12;
    }
  }

  if (v10)
  {
    goto LABEL_12;
  }

  untaggedResponses = [commandCopy untaggedResponses];
  v12 = [untaggedResponses count];

  if (!v12)
  {
    v9 = 0;
    goto LABEL_18;
  }

  v13 = 0;
  while (1)
  {
    untaggedResponses2 = [commandCopy untaggedResponses];
    v15 = [untaggedResponses2 objectAtIndex:v13];

    if ([v15 responseType] == 4 && objc_msgSend(v15, "responseCode") == 8)
    {
      break;
    }

    if (++v13 >= v12)
    {
      goto LABEL_18;
    }
  }

  untaggedResponses3 = [commandCopy untaggedResponses];
  [untaggedResponses3 removeObjectAtIndex:v13];

LABEL_16:
  v23 = commandCopy;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v23 count:1];
  [(MFIMAPConnection *)self didFinishCommands:v17];

  if ([(MFIMAPConnection *)self createMailbox:mailboxCopy])
  {
    v22 = commandCopy;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v22 count:1];
    v19 = [(MFIMAPConnection *)self _responseFromSendingCommands:v18];

    v9 = v19;
  }

LABEL_18:

  v20 = *MEMORY[0x1E69E9840];

  return v9;
}

- (BOOL)copyUIDs:(id)ds toMailboxNamed:(id)named copyInfo:(id *)info error:(id *)error
{
  v25[2] = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  namedCopy = named;
  if (!dsCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"IMAPConnection.m" lineNumber:2669 description:{@"Invalid parameter not satisfying: %@", @"uids"}];
  }

  v13 = [(MFIMAPConnection *)self messageSetForUIDs:dsCopy];
  if ([v13 length])
  {
    v25[0] = v13;
    v14 = MFIMAPStringFromMailboxName(namedCopy);
    v25[1] = v14;
    v15 = [MEMORY[0x1E695DEC8] arrayWithObjects:v25 count:2];

    v16 = [[_MFIMAPCommandParameters alloc] initWithCommand:23 arguments:v15];
    v17 = [(MFIMAPConnection *)self _responseFromSendingCommand:v16 andPossiblyCreateMailbox:namedCopy];
    v24 = v16;
    v18 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v24 count:1];
    [(MFIMAPConnection *)self didFinishCommands:v18];

    if (info)
    {
      v19 = MFUIDPlusInfoFromResponse(v17);
      *info = [(MFIMAPConnection *)self copyInfoForMessageInfo:v19];
    }

    v20 = [v17 responseType] == 2;
  }

  else if (error)
  {
    [MFError errorWithDomain:@"MFMessageErrorDomain" code:1030 localizedDescription:0];
    *error = v20 = 0;
  }

  else
  {
    v20 = 0;
  }

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (BOOL)moveUIDs:(id)ds toMailboxNamed:(id)named copyInfo:(id *)info error:(id *)error
{
  v43 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  namedCopy = named;
  if (!namedCopy)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"IMAPConnection.m" lineNumber:2693 description:{@"Invalid parameter not satisfying: %@", @"mailboxName"}];
  }

  if ([(MFIMAPConnection *)self supportsCapability:20])
  {
    v32 = [(MFIMAPConnection *)self messageSetForUIDs:dsCopy];
    if ([v32 length])
    {
      v40[0] = v32;
      v12 = MFIMAPStringFromMailboxName(namedCopy);
      v40[1] = v12;
      v31 = [MEMORY[0x1E695DEC8] arrayWithObjects:v40 count:2];

      v13 = [[_MFIMAPCommandParameters alloc] initWithCommand:37 arguments:v31];
      v30 = [(MFIMAPConnection *)self _responseFromSendingCommand:v13 andPossiblyCreateMailbox:namedCopy];
      responseType = [v30 responseType];
      v15 = responseType == 2;
      if (info)
      {
        if (responseType == 2)
        {
          v16 = MFUIDPlusInfoFromResponse(v30);
          v17 = [(MFIMAPConnection *)self copyInfoForMessageInfo:v16];

          if (!v17)
          {
            v36 = 0u;
            v37 = 0u;
            v34 = 0u;
            v35 = 0u;
            untaggedResponses = [(_MFIMAPCommandParameters *)v13 untaggedResponses];
            v17 = [untaggedResponses countByEnumeratingWithState:&v34 objects:v39 count:16];
            if (v17)
            {
              v19 = *v35;
              while (2)
              {
                for (i = 0; i != v17; i = i + 1)
                {
                  if (*v35 != v19)
                  {
                    objc_enumerationMutation(untaggedResponses);
                  }

                  v21 = *(*(&v34 + 1) + 8 * i);
                  if ([v21 responseType] == 2 && objc_msgSend(v21, "responseCode") == 16)
                  {
                    v24 = MFUIDPlusInfoFromResponse(v21);
                    v17 = [(MFIMAPConnection *)self copyInfoForMessageInfo:v24];

                    goto LABEL_28;
                  }
                }

                v17 = [untaggedResponses countByEnumeratingWithState:&v34 objects:v39 count:16];
                if (v17)
                {
                  continue;
                }

                break;
              }
            }

LABEL_28:
          }
        }

        else
        {
          v17 = 0;
        }

        v25 = v17;
        *info = v17;
      }

      v38 = v13;
      v26 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v38 count:1];
      [(MFIMAPConnection *)self didFinishCommands:v26];
    }

    else if (error)
    {
      [MFError errorWithDomain:@"MFMessageErrorDomain" code:1030 localizedDescription:0];
      *error = v15 = 0;
    }

    else
    {
      v15 = 0;
    }
  }

  else if (error)
  {
    v22 = +[MFIMAPConnection log];
    if (os_log_type_enabled(v22, OS_LOG_TYPE_DEFAULT))
    {
      ef_publicDescription = [(MFIMAPConnection *)self ef_publicDescription];
      *buf = 138543362;
      v42 = ef_publicDescription;
      _os_log_impl(&dword_1B0389000, v22, OS_LOG_TYPE_DEFAULT, "<%{public}@> Server does not support move.", buf, 0xCu);
    }

    [MFError errorWithDomain:@"MFMessageErrorDomain" code:1034 localizedDescription:0];
    *error = v15 = 0;
  }

  else
  {
    v15 = 0;
  }

  v27 = *MEMORY[0x1E69E9840];
  return v15;
}

- (id)copyInfoForMessageInfo:(id)info
{
  infoCopy = info;
  if (infoCopy)
  {
    v5 = objc_alloc_init(MEMORY[0x1E699B2A8]);
    v6 = [infoCopy objectForKeyedSubscript:@"UIDVALIDITY"];
    [v5 setUidValidity:{objc_msgSend(v6, "unsignedIntValue")}];

    v7 = [infoCopy objectForKeyedSubscript:@"Source UIDS"];
    v8 = [infoCopy objectForKeyedSubscript:@"Destination UIDS"];
    v9 = [(MFIMAPConnection *)self _dictionaryFromSourceUIDs:v7 destinationUIDs:v8];
    [v5 setSourceUIDsToDestinationUIDs:v9];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)_dictionaryFromSourceUIDs:(id)ds destinationUIDs:(id)iDs
{
  dsCopy = ds;
  iDsCopy = iDs;
  v7 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v8 = [(__CFString *)dsCopy length:0xAAAAAAAAAAAAAAAALL];
  v27 = dsCopy;
  v30 = 0;
  v31 = v8;
  if (CFStringGetCharactersPtr(dsCopy))
  {
    CStringPtr = 0;
  }

  else
  {
    CStringPtr = CFStringGetCStringPtr(dsCopy, 0x600u);
  }

  v29 = CStringPtr;
  v32 = 0;
  v33 = 0;
  v34 = 0;
  v35 = v8;
  v36 = 0;
  v10 = [(__CFString *)iDsCopy length];
  v18 = iDsCopy;
  v21 = 0;
  v22 = v10;
  if (CFStringGetCharactersPtr(iDsCopy))
  {
    v11 = 0;
  }

  else
  {
    v11 = CFStringGetCStringPtr(iDsCopy, 0x600u);
  }

  v20 = v11;
  v23 = 0;
  v24 = 0uLL;
  v25 = v10;
  v12 = IMAPNextUidFromSet(buffer);
  for (i = IMAPNextUidFromSet(&v17); v12 && i; i = IMAPNextUidFromSet(&v17))
  {
    v14 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:?];
    v15 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:v12];
    [v7 setObject:v14 forKeyedSubscript:v15];

    v12 = IMAPNextUidFromSet(buffer);
  }

  if (v12 | i && os_log_type_enabled(MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR))
  {
    [MFIMAPConnection _dictionaryFromSourceUIDs:destinationUIDs:];
  }

  return v7;
}

- (id)_indexSetForIMAPInlineSet:(id)set
{
  setCopy = set;
  v4 = objc_opt_new();
  v5 = [(__CFString *)setCopy length:0xAAAAAAAAAAAAAAAALL];
  v10 = setCopy;
  v13 = 0;
  v14 = v5;
  if (CFStringGetCharactersPtr(setCopy))
  {
    CStringPtr = 0;
  }

  else
  {
    CStringPtr = CFStringGetCStringPtr(setCopy, 0x600u);
  }

  v12 = CStringPtr;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  v18 = v5;
  v19 = 0;
  while (1)
  {
    v7 = IMAPNextUidFromSet(&v9);
    if (!v7)
    {
      break;
    }

    [v4 addIndex:v7];
  }

  return v4;
}

- (BOOL)appendData:(id)data toMailboxNamed:(id)named flags:(id)flags dateReceived:(id)received appendInfo:(id *)info error:(id *)error
{
  dataCopy = data;
  namedCopy = named;
  flagsCopy = flags;
  receivedCopy = received;
  permanentFlags = [(MFIMAPConnection *)self permanentFlags];
  v18 = MFMessageFlagsForECMessageFlags(flagsCopy);
  v19 = IMAPCreateArrayForMessageFlags(v18, [(MFIMAPConnection *)self permanentFlags], permanentFlags >> 31);
  v27 = 0;
  v20 = [(MFIMAPConnection *)self appendData:dataCopy toMailboxNamed:namedCopy flags:v19 dateReceived:receivedCopy newMessageInfo:&v27];
  v21 = v27;
  if (info)
  {
    v22 = objc_alloc_init(MEMORY[0x1E699B2A0]);
    v23 = [v21 objectForKeyedSubscript:@"UIDVALIDITY"];
    [v22 setUidValidity:{objc_msgSend(v23, "unsignedIntValue")}];

    v24 = [v21 objectForKeyedSubscript:@"Source UIDS"];
    [v22 setNewMessageUID:{objc_msgSend(v24, "unsignedIntegerValue")}];

    v25 = v22;
    *info = v22;
  }

  return v20;
}

- (BOOL)storeFlagChange:(id)change forUIDs:(id)ds
{
  changeCopy = change;
  dsCopy = ds;
  permanentFlags = [(MFIMAPConnection *)self permanentFlags];
  v14 = 0;
  v15 = 0;
  MFGetFlagsAndMaskForFlagChange(changeCopy, &v15, &v14);
  v9 = IMAPCreateArrayForMessageFlags(v14 & v15, permanentFlags, permanentFlags >> 31);
  v10 = IMAPCreateArrayForMessageFlags(v14 & ~v15, permanentFlags, permanentFlags >> 31);
  v11 = [(MFIMAPConnection *)self messageSetForUIDs:dsCopy];
  if ([v9 count] && v11 && !-[MFIMAPConnection storeFlags:state:forMessageSet:](self, "storeFlags:state:forMessageSet:", v9, 1, v11))
  {
    v12 = 0;
  }

  else if ([v10 count])
  {
    v12 = [(MFIMAPConnection *)self storeFlags:v10 state:0 forMessageSet:v11];
  }

  else
  {
    v12 = 1;
  }

  return v12;
}

- (BOOL)storeGmailLabels:(id)labels state:(BOOL)state forUIDs:(id)ds
{
  labelsCopy = labels;
  dsCopy = ds;
  [(MFIMAPConnection *)self doesNotRecognizeSelector:a2];
  __assert_rtn("[MFIMAPConnection storeGmailLabels:state:forUIDs:]", "IMAPConnection.m", 2826, "0");
}

- (BOOL)appendData:(id)data toMailboxNamed:(id)named flags:(id)flags dateReceived:(id)received newMessageInfo:(id *)info
{
  dataCopy = data;
  namedCopy = named;
  flagsCopy = flags;
  receivedCopy = received;
  v14 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
  v15 = [[_MFIMAPCommandParameters alloc] initWithCommand:19 arguments:v14];
  if (info)
  {
    *info = 0;
  }

  v16 = MFIMAPStringFromMailboxName(namedCopy);
  [v14 addObject:v16];

  if (flagsCopy)
  {
    v17 = [(MFIMAPConnection *)self parenthesizedStringWithObjects:flagsCopy];
    [v14 addObject:v17];
  }

  v18 = receivedCopy;
  if (_MFIMAPDateStringForDate_onceToken != -1)
  {
    [MFIMAPConnection appendData:toMailboxNamed:flags:dateReceived:newMessageInfo:];
  }

  v19 = [_MFIMAPDateStringForDate_formatter stringFromDate:v18];

  if (v19)
  {
    [v14 addObject:v19];
  }

  [v14 addObject:dataCopy];
  v20 = [(MFIMAPConnection *)self _responseFromSendingCommand:v15 andPossiblyCreateMailbox:namedCopy];
  v21 = v20;
  if (info && [v20 responseType] == 2 && objc_msgSend(v21, "responseCode") == 15)
  {
    responseInfo = [v21 responseInfo];
    v22 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:2];
    v23 = [responseInfo objectAtIndexedSubscript:0];
    [v22 setObject:v23 forKeyedSubscript:@"UIDVALIDITY"];

    v24 = [responseInfo objectAtIndexedSubscript:1];
    [v22 setObject:v24 forKeyedSubscript:@"Source UIDS"];

    v25 = v22;
    *info = v22;
  }

  v26 = [v21 responseType] == 2;

  return v26;
}

- (id)fetchMessageIdsForUids:(id)uids
{
  v38[2] = *MEMORY[0x1E69E9840];
  uidsCopy = uids;
  v29 = [objc_alloc(MEMORY[0x1E695DF90]) initWithCapacity:{objc_msgSend(uidsCopy, "count")}];
  allObjects = [uidsCopy allObjects];
  selfCopy = self;
  v5 = [(MFIMAPConnection *)self messageSetForNumbers:allObjects];

  v23 = v5;
  v38[0] = v5;
  v38[1] = @"(BODY.PEEK[HEADER.FIELDS (MESSAGE-ID)])";
  v25 = [MEMORY[0x1E695DEC8] arrayWithObjects:v38 count:2];
  v26 = [[_MFIMAPCommandParameters alloc] initWithCommand:21 arguments:v25];
  v37 = v26;
  v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v37 count:1];
  v7 = [(MFIMAPConnection *)selfCopy _responseFromSendingCommands:v6];
  LODWORD(v5) = [v7 responseType] == 2;

  if (v5)
  {
    [(_MFIMAPCommandParameters *)v26 untaggedResponses];
    v33 = 0u;
    v34 = 0u;
    v31 = 0u;
    obj = v32 = 0u;
    v8 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
    if (v8)
    {
      v9 = *v32;
      v28 = *MEMORY[0x1E699B130];
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v32 != v9)
          {
            objc_enumerationMutation(obj);
          }

          v11 = *(*(&v31 + 1) + 8 * i);
          if ([v11 responseType] == 17)
          {
            v12 = [v11 fetchResultWithType:4];
            v13 = [v11 fetchResultWithType:8];
            fetchData = [v12 fetchData];
            if (fetchData)
            {
              v15 = [objc_alloc(MEMORY[0x1E69AD730]) initWithData:fetchData];
              [v15 mf_convertNetworkLineEndingsToUnix];
              v16 = v15;

              v17 = [objc_alloc(MEMORY[0x1E69AD740]) initWithHeaderData:v16 encoding:0xFFFFFFFFLL];
              v18 = [v17 copyFirstStringValueForKey:v28];
              v19 = [MEMORY[0x1E696AD98] numberWithUnsignedInt:{objc_msgSend(v13, "uid")}];
              [v29 setObject:v18 forKeyedSubscript:v19];
            }
          }
        }

        v8 = [obj countByEnumeratingWithState:&v31 objects:v36 count:16];
      }

      while (v8);
    }
  }

  v35 = v26;
  v20 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v35 count:1];
  [(MFIMAPConnection *)selfCopy didFinishCommands:v20];

  v21 = *MEMORY[0x1E69E9840];

  return v29;
}

- (BOOL)performCustomCommand:(id)command withArguments:(id)arguments
{
  v22[1] = *MEMORY[0x1E69E9840];
  commandCopy = command;
  argumentsCopy = arguments;
  if ([argumentsCopy count])
  {
    v7 = [argumentsCopy mutableCopy];
    [v7 insertObject:commandCopy atIndex:0];
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x1E695DEC8]) initWithObjects:{commandCopy, 0}];
  }

  v8 = [[_MFIMAPCommandParameters alloc] initWithCommand:38 arguments:v7];
  v22[0] = v8;
  v9 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:1];
  v10 = [(MFIMAPConnection *)self _responseFromSendingCommands:v9];

  responseType = [v10 responseType];
  if (responseType != 2)
  {
    v12 = +[MFActivityMonitor currentMonitor];
    error = [v12 error];
    v14 = error == 0;

    if (v14)
    {
      v15 = _messageFromResponse(v10);
      v16 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1033 localizedDescription:v15];
      [v12 setError:v16];
    }
  }

  v21 = v8;
  v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v21 count:1];
  [(MFIMAPConnection *)self didFinishCommands:v17];

  v18 = *MEMORY[0x1E69E9840];
  return responseType == 2;
}

- (void)setReadBufferSizeFromElapsedTime:(double)time bytesRead:(unint64_t)read
{
  if (time > 0.0 && read >= 0x401)
  {
    v5 = time - *&sIMAPFetchTargetTime;
    if (time - *&sIMAPFetchTargetTime < 0.0)
    {
      v5 = -(time - *&sIMAPFetchTargetTime);
    }

    if (v5 > *&sIMAPFetchTargetTime * 0.5)
    {
      readBufferSize = [(MFIMAPConnection *)self readBufferSize];
      v8 = *&sIMAPFetchTargetTime;
      if (*&sIMAPFetchTargetTime <= time)
      {
        if (readBufferSize >> 1 <= sIMAPMinFetchChunkSize)
        {
          v9 = sIMAPMinFetchChunkSize;
        }

        else
        {
          v9 = readBufferSize >> 1;
        }
      }

      else if (2 * readBufferSize >= sIMAPMaxFetchChunkSize)
      {
        v9 = sIMAPMaxFetchChunkSize;
      }

      else
      {
        v9 = 2 * readBufferSize;
      }

      [(MFIMAPConnection *)self setReadBufferSize:v9, v8];
    }
  }
}

- (unsigned)readBufferSize
{
  readBufferSize = self->_readBufferSize;
  if (!readBufferSize)
  {
    readBufferSize = 0x2000;
    self->_readBufferSize = 0x2000;
  }

  return readBufferSize;
}

+ (void)setReadSizeParameters
{
  standardUserDefaults = [MEMORY[0x1E695E000] standardUserDefaults];
  v2 = [standardUserDefaults integerForKey:@"MinFetchChunkSize"];
  if (v2)
  {
    sIMAPMinFetchChunkSize = v2;
  }

  v3 = [standardUserDefaults integerForKey:@"MaxFetchChunkSize"];
  if (v3)
  {
    sIMAPMaxFetchChunkSize = v3;
  }

  [standardUserDefaults floatForKey:@"FetchDeltaTarget"];
  if (v4 != 0.0)
  {
    *&sIMAPFetchTargetTime = v4;
  }
}

- (id)messageSetForRange:(id)range
{
  if (range.var1 == 0xFFFFFFFFLL)
  {
    v4 = 0x7FFFFFFFFFFFFFFELL - range.var0;
  }

  else
  {
    v4 = range.var1 - range.var0 + 1;
  }

  v5 = [MEMORY[0x1E696AC90] indexSetWithIndexesInRange:{range.var0, v4}];
  v6 = [(MFIMAPConnection *)self messageSetForUIDs:v5];

  return v6;
}

- (id)messageSetForNumbers:(id)numbers
{
  v4 = uidSetForUIDArray(numbers);
  v5 = [(MFIMAPConnection *)self messageSetForUIDs:v4];

  return v5;
}

- (id)messageSetForUIDs:(id)ds
{
  dsCopy = ds;
  if (dsCopy)
  {
    v5 = [(MFIMAPConnection *)self messageSetForUIDs:dsCopy maxTokens:-1 remainder:0];
  }

  else
  {
    v5 = 0;
  }

  return v5;
}

- (id)messageSetForUIDs:(id)ds maxTokens:(unint64_t)tokens remainder:(id *)remainder
{
  dsCopy = ds;
  v8 = [MEMORY[0x1E696AD60] stringWithCapacity:200];
  v29[0] = 0;
  v29[1] = v29;
  v29[2] = 0x2020000000;
  v29[3] = 0;
  v25 = 0;
  v26 = &v25;
  v27 = 0x2020000000;
  v28 = 1;
  v19 = 0;
  v20 = &v19;
  v21 = 0x3032000000;
  v22 = __Block_byref_object_copy__2;
  v23 = __Block_byref_object_dispose__2;
  v24 = 0;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __58__MFIMAPConnection_messageSetForUIDs_maxTokens_remainder___block_invoke;
  v13[3] = &unk_1E7AA2C48;
  v15 = v29;
  v16 = &v19;
  v17 = &v25;
  tokensCopy = tokens;
  v9 = v8;
  v14 = v9;
  [dsCopy enumerateRangesUsingBlock:v13];
  if (remainder)
  {
    *remainder = v20[5];
  }

  if (*(v26 + 24))
  {
    v10 = 0;
  }

  else
  {
    v10 = v9;
  }

  v11 = v10;

  _Block_object_dispose(&v19, 8);
  _Block_object_dispose(&v25, 8);
  _Block_object_dispose(v29, 8);

  return v11;
}

void __58__MFIMAPConnection_messageSetForUIDs_maxTokens_remainder___block_invoke(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = *(*(a1 + 40) + 8);
  v7 = *(v6 + 24);
  if ((v7 + 4) <= *(a1 + 64))
  {
    v9 = *(*(a1 + 56) + 8);
    if (*(v9 + 24) == 1)
    {
      *(v9 + 24) = 0;
      if (!a3)
      {
        return;
      }
    }

    else
    {
      *(v6 + 24) = v7 + 1;
      [*(a1 + 32) appendString:{@", "}];
      if (!a3)
      {
        return;
      }
    }

    if (a3 == 1)
    {
      ++*(*(*(a1 + 40) + 8) + 24);
      [*(a1 + 32) appendFormat:@"%llu", a2, v13];
    }

    else
    {
      *(*(*(a1 + 40) + 8) + 24) += 3;
      if (HIDWORD(a3))
      {
        [*(a1 + 32) appendFormat:@"%llu:*", a2, v13];
      }

      else
      {
        [*(a1 + 32) appendFormat:@"%llu:%llu", a2, a3 + a2 - 1];
      }
    }
  }

  else
  {
    v8 = *(*(*(a1 + 48) + 8) + 40);
    if (v8)
    {

      [v8 addIndexesInRange:{a2, a3}];
    }

    else
    {
      v10 = [MEMORY[0x1E696AD50] indexSetWithIndexesInRange:{a2, a3}];
      v11 = *(*(a1 + 48) + 8);
      v12 = *(v11 + 40);
      *(v11 + 40) = v10;
    }
  }
}

- (id)parenthesizedStringWithObjects:(id)objects
{
  objectsCopy = objects;
  v5 = [objectsCopy count];
  v6 = objc_msgSend(MEMORY[0x1E696AD60], "stringWithString:", @"(");
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v8 = [objectsCopy objectAtIndex:i];
      if (i)
      {
        [v6 appendString:@" "];
      }

      objc_opt_class();
      if (objc_opt_isKindOfClass())
      {
        [v6 appendString:v8];
      }

      else
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          [(MFIMAPConnection *)self parenthesizedStringWithObjects:v8];
        }

        else
        {
          [v8 description];
        }
        v9 = ;
        [v6 appendString:v9];
      }
    }
  }

  [v6 appendString:@""]);

  return v6;
}

- (BOOL)authenticateUsingAccount:(id)account authenticator:(id)authenticator
{
  v43 = *MEMORY[0x1E69E9840];
  accountCopy = account;
  authenticatorCopy = authenticator;
  v7 = MEMORY[0x1E695DF70];
  authenticationScheme = [authenticatorCopy authenticationScheme];
  name = [authenticationScheme name];
  v10 = [v7 arrayWithObject:name];

  if (-[MFIMAPConnection supportsCapability:](self, "supportsCapability:", 17) && [authenticatorCopy supportsInitialClientResponse])
  {
    v11 = [authenticatorCopy responseForServerData:0];
    mf_encodeBase64WithoutLineBreaks = [v11 mf_encodeBase64WithoutLineBreaks];

    if (mf_encodeBase64WithoutLineBreaks)
    {
      v13 = [objc_alloc(MEMORY[0x1E696AEC0]) initWithData:mf_encodeBase64WithoutLineBreaks encoding:1];
      [v10 addObject:v13];
    }

    else
    {
      v14 = MFLogGeneral();
      if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
      {
        *buf = 138412290;
        v42 = authenticatorCopy;
        _os_log_impl(&dword_1B0389000, v14, OS_LOG_TYPE_DEFAULT, "#Warning %@ claimed to support initial response data, and didn't supply an initial response", buf, 0xCu);
      }
    }
  }

  v15 = [[_MFIMAPCommandParameters alloc] initWithCommand:4 arguments:v10];
  [(MFIMAPConnection *)self mf_lock];
  v40 = v15;
  v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v40 count:1];
  v38 = 0;
  v17 = [(MFIMAPConnection *)self _sendCommands:v16 response:&v38];
  v18 = v38;

  if (!v17)
  {
LABEL_24:
    v19 = v18;
    goto LABEL_46;
  }

  [authenticatorCopy setAuthenticationState:1];
  while (1)
  {
    if ([authenticatorCopy authenticationState] == 3)
    {
      goto LABEL_24;
    }

    v19 = [(MFIMAPConnection *)self _copyNextTaggedOrContinuationResponseForCommand:v15];

    if (!v19)
    {
      [authenticatorCopy setAuthenticationState:3];
      goto LABEL_46;
    }

    responseType = [v19 responseType];
    if (responseType != 1)
    {
      break;
    }

    userData = [v19 userData];
    v22 = [authenticatorCopy responseForServerData:userData];

    if (v22)
    {
      if ([authenticatorCopy usesBase64EncodeResponseData])
      {
        mf_encodeBase64WithoutLineBreaks2 = [v22 mf_encodeBase64WithoutLineBreaks];

        v22 = mf_encodeBase64WithoutLineBreaks2;
      }

      [(NSMutableData *)self->_data setData:v22];
    }

    else
    {
      [(NSMutableData *)self->_data setLength:0];
    }

    [(NSMutableData *)self->_data appendBytes:&kIMAPLineEnding length:2];
    justSentPlainTextPassword = [authenticatorCopy justSentPlainTextPassword];
    data = self->_data;
    if (justSentPlainTextPassword)
    {
      v26 = [(MFConnection *)self writeData:data dontLogBytesInRange:0, [(NSMutableData *)data length]- 2];
    }

    else
    {
      v26 = [(MFConnection *)self writeData:data];
    }

    if (!v26)
    {
      if ([authenticatorCopy authenticationState] == 1)
      {
        [authenticatorCopy setAuthenticationState:3];
      }

      goto LABEL_45;
    }

    v18 = v19;
  }

  if (responseType == 2)
  {
    [authenticatorCopy setAuthenticationState:4];
    *(self + 152) = *(self + 152) & 0xF8 | 2;
    if (!self->super._securityLayer)
    {
      securityLayer = [authenticatorCopy securityLayer];
      securityLayer = self->super._securityLayer;
      self->super._securityLayer = securityLayer;
    }

    [(MFIMAPConnection *)self _updateCapabilitiesForAccount:accountCopy withAuthenticationResponse:v19];
    goto LABEL_46;
  }

  if (responseType == 3)
  {
    v30 = MFLogGeneral();
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      [v19 userString];
      objc_claimAutoreleasedReturnValue();
      [MFIMAPConnection authenticateUsingAccount:authenticator:];
    }

    goto LABEL_40;
  }

  if (responseType != 4)
  {
    v30 = +[MFIMAPConnection log];
    if (os_log_type_enabled(v30, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v42 = v19;
      _os_log_error_impl(&dword_1B0389000, v30, OS_LOG_TYPE_ERROR, "*** Unexpected response during authentication: %@", buf, 0xCu);
    }

LABEL_40:

    [authenticatorCopy setAuthenticationState:3];
    goto LABEL_46;
  }

  v27 = MFLogGeneral();
  if (os_log_type_enabled(v27, OS_LOG_TYPE_ERROR))
  {
    [v19 userString];
    objc_claimAutoreleasedReturnValue();
    [MFIMAPConnection authenticateUsingAccount:authenticator:];
  }

  [authenticatorCopy setAuthenticationState:2];
  if ([v19 responseCode] == 18)
  {
    [authenticatorCopy setInvalidCredentialsError];
    goto LABEL_46;
  }

  v22 = [(MFIMAPConnection *)self _serverErrorForAccount:accountCopy response:v19 command:v15];
  if (v22)
  {
    v31 = +[MFActivityMonitor currentMonitor];
    [v31 setError:v22];
  }

LABEL_45:

LABEL_46:
  [(MFIMAPConnection *)self mf_unlock];
  v39 = v15;
  v32 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v39 count:1];
  [(MFIMAPConnection *)self didFinishCommands:v32];

  if ([authenticatorCopy authenticationState] == 3)
  {
    [(MFIMAPConnection *)self disconnectAndNotifyDelegate:0];
  }

  v33 = [authenticatorCopy authenticationState] == 4;

  v34 = *MEMORY[0x1E69E9840];
  return v33;
}

- (BOOL)startTLSForAccount:(id)account
{
  v27[1] = *MEMORY[0x1E69E9840];
  accountCopy = account;
  [(MFIMAPConnection *)self mf_lock];
  if ([(MFIMAPConnection *)self supportsCapability:0])
  {
    v5 = [[_MFIMAPCommandParameters alloc] initWithCommand:3];
    v27[0] = v5;
    v6 = [MEMORY[0x1E695DEC8] arrayWithObjects:v27 count:1];
    v7 = [(MFIMAPConnection *)self _responseFromSendingCommands:v6];
    v8 = [v7 responseType] == 2;

    if (!v8)
    {
      v9 = MEMORY[0x1E696AEC0];
      v10 = MFLookupLocalizedString(@"TLS_FAILED_FORMAT", @"Starting TLS failed on %@ server “%@”. Please check your account settings and try again.", @"Delayed");
      accountTypeString = [objc_opt_class() accountTypeString];
      hostname = [accountCopy hostname];
      v13 = [v9 stringWithFormat:v10, accountTypeString, hostname];

      v14 = +[MFActivityMonitor currentMonitor];
      v15 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1033 localizedDescription:v13];
      [v14 setError:v15];
    }

    v26 = v5;
    v16 = [MEMORY[0x1E695DEC8] arrayWithObjects:&v26 count:1];
    [(MFIMAPConnection *)self didFinishCommands:v16];
  }

  else
  {
    v17 = MEMORY[0x1E696AEC0];
    v18 = MFLookupLocalizedString(@"TLS_NOT_SUPPORTED_FORMAT", @"The %@ server “%@” doesn’t support TLS (SSL) on port %u. Please check your account settings and try again.", @"Delayed");
    accountTypeString2 = [objc_opt_class() accountTypeString];
    hostname2 = [accountCopy hostname];
    v21 = [v17 stringWithFormat:v18, accountTypeString2, hostname2, objc_msgSend(accountCopy, "portNumber")];

    v22 = +[MFActivityMonitor currentMonitor];
    v23 = [MFError errorWithDomain:@"MFMessageErrorDomain" code:1034 localizedDescription:v21];
    [v22 setError:v23];

    v8 = 0;
  }

  [(MFIMAPConnection *)self mf_unlock];

  v24 = *MEMORY[0x1E69E9840];
  return v8;
}

- (NSString)debugDescription
{
  v26 = *MEMORY[0x1E69E9840];
  v3 = +[MFIMAPConnection log];
  if (os_log_type_enabled(v3, OS_LOG_TYPE_DEBUG))
  {
    v23 = MEMORY[0x1E696AEC0];
    v22 = objc_opt_class();
    _connectionStateDescription = [(MFIMAPConnection *)self _connectionStateDescription];
    v16 = atomic_load(&self->super._isFetching);
    if (v16)
    {
      v17 = ", Fetching";
    }

    else
    {
      v17 = "";
    }

    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    v21 = v17;
    v19 = _connectionStateDescription;
    v20 = [v23 stringWithFormat:@"<%@:%p> [%@%s] delegate=%p mailbox=<%@>", v22, self, _connectionStateDescription, v21, WeakRetained, self->_selectedMailbox];
    *buf = 138412290;
    v25 = v20;
    _os_log_debug_impl(&dword_1B0389000, v3, OS_LOG_TYPE_DEBUG, "debugDescription for _connectionState: %@", buf, 0xCu);
  }

  v4 = self->_selectedMailbox == 0;
  v5 = MEMORY[0x1E696AEC0];
  v6 = objc_opt_class();
  _connectionStateDescription2 = [(MFIMAPConnection *)self _connectionStateDescription];
  v8 = atomic_load(&self->super._isFetching);
  if (v8)
  {
    v9 = ", Fetching";
  }

  else
  {
    v9 = "";
  }

  v10 = objc_loadWeakRetained(&self->_delegate);
  v11 = v10;
  if (v4)
  {
    [v5 stringWithFormat:@"<%@:%p> [%@%s] delegate=%p", v6, self, _connectionStateDescription2, v9, v10];
  }

  else
  {
    [v5 stringWithFormat:@"<%@:%p> [%@%s] delegate=%p mailbox=<%@>", v6, self, _connectionStateDescription2, v9, v10, self->_selectedMailbox];
  }
  v12 = ;

  v13 = *MEMORY[0x1E69E9840];

  return v12;
}

- (id)_connectionStateDescription
{
  v2 = *(self + 152);
  v3 = v2 << 61 >> 61;
  if (((v2 << 29) >> 29) > 3)
  {
    v5 = [MEMORY[0x1E696AD98] numberWithInteger:v3];
    stringValue = [v5 stringValue];
  }

  else
  {
    stringValue = _connectionStateDescription__StateStrings[v3];
  }

  return stringValue;
}

- (NSString)ef_publicDescription
{
  currentDevice = [MEMORY[0x1E699B7B0] currentDevice];
  isInternal = [currentDevice isInternal];

  if (isInternal)
  {
    weakRetained = [(MFIMAPConnection *)self debugDescription];
  }

  else
  {
    v6 = MEMORY[0x1E696AEC0];
    _connectionLogPrefix = [(MFIMAPConnection *)self _connectionLogPrefix];
    WeakRetained = objc_loadWeakRetained(&self->_delegate);
    weakRetained = [v6 stringWithFormat:@"%@ delegate=%p", _connectionLogPrefix, WeakRetained];
  }

  return weakRetained;
}

- (id)_connectionLogPrefix
{
  selectedMailbox = self->_selectedMailbox;
  v4 = MEMORY[0x1E696AEC0];
  accountLogString = [(MFConnection *)self accountLogString];
  [(MFIMAPConnection *)self _connectionStateDescription];
  if (selectedMailbox)
    v6 = {;
    v7 = [MEMORY[0x1E699B858] partiallyRedactedStringForString:self->_selectedMailbox];
    v8 = [v4 stringWithFormat:@"<%p:%@> [%@ (%@)]", self, accountLogString, v6, v7];
  }

  else
    v6 = {;
    v8 = [v4 stringWithFormat:@"<%p:%@> [%@]", self, accountLogString, v6];
  }

  return v8;
}

- (id)_readDataOfLength:(int64_t)length
{
  [(NSMutableData *)self->_data setLength:0];
  if (length < 1)
  {
    if (length < 0 && [(MFConnection *)self readLineIntoData:self->_data])
    {
      bytes = [(NSMutableData *)self->_data bytes];
      if (bytes)
      {
        v8 = bytes;
        v9 = [(NSMutableData *)self->_data length];
        v7 = v9 - 2;
        if (v9 >= 2 && *(v8 + v9 - 1) == 10 && *(v8 + v7) == 13)
        {
          [(NSMutableData *)self->_data setLength:?];
        }
      }

      if ([(NSMutableData *)self->_data length])
      {
        bytes2 = [(NSMutableData *)self->_data bytes];
        if (bytes2)
        {
          v11 = bytes2;
          if (!*bytes2)
          {
            v12 = [(NSMutableData *)self->_data length];
            v13 = v11 + 1;
            v14 = 1;
            v15 = v12;
            do
            {
              if (*v13++)
              {
                v17 = 1;
              }

              else
              {
                v17 = v14 >= v12;
              }

              ++v14;
              --v15;
            }

            while (!v17);
            memmove([(NSMutableData *)self->_data mutableBytes], v13 - 1, v15);
            [(NSMutableData *)self->_data setLength:v15];
          }
        }
      }

      goto LABEL_3;
    }
  }

  else if ([(MFConnection *)self readBytesIntoData:self->_data desiredLength:length])
  {
LABEL_3:
    data = self->_data;
    goto LABEL_22;
  }

  data = 0;
LABEL_22:

  return data;
}

- (id)_fetchArgumentForMessageSkeletonsWithAllHeaders
{
  [(MFIMAPConnection *)self mf_lock];
  lastRequiredHeaders = self->_lastRequiredHeaders;
  if (!lastRequiredHeaders)
  {
    v4 = objc_msgSend(@"(INTERNALDATE UID RFC822.SIZE FLAGS "), "mutableCopyWithZone:", 0;
    if ([(MFIMAPConnection *)self supportsCapability:16])
    {
      [v4 appendString:@"MODSEQ "];
    }

    if ([(MFIMAPConnection *)self supportsCapability:19])
    {
      [v4 appendString:@"X-GM-MSGID "];
    }

    [v4 appendString:@"BODY.PEEK[HEADER]"]);
    v5 = self->_lastRequiredHeaders;
    self->_lastRequiredHeaders = v4;

    lastRequiredHeaders = self->_lastRequiredHeaders;
  }

  v6 = lastRequiredHeaders;
  [(MFIMAPConnection *)self mf_unlock];

  return v6;
}

- (id)_responseFromSendingCommands:(id)commands
{
  commandsCopy = commands;
  v5 = objc_autoreleasePoolPush();
  [(MFIMAPConnection *)self mf_lock];
  v18 = 0;
  v6 = [(MFIMAPConnection *)self _sendCommands:commandsCopy response:&v18];
  v7 = v18;
  v8 = v7;
  if (v6)
  {
    v9 = v6 - 1;
    v10 = [commandsCopy objectAtIndexedSubscript:v9];
    sequenceNumber = [v10 sequenceNumber];

    do
    {
      v12 = [commandsCopy objectAtIndexedSubscript:v9];
      v13 = [(MFIMAPConnection *)self _copyNextTaggedOrContinuationResponseForCommand:v12];

      if (!v13)
      {
        break;
      }

      v14 = [v13 tag];
      intValue = [v14 intValue];

      v16 = sequenceNumber == intValue;
      v8 = v13;
    }

    while (!v16);
  }

  else
  {
    v13 = v7;
  }

  [(MFIMAPConnection *)self locked_scheduleIdle];
  [(MFIMAPConnection *)self mf_unlock];
  objc_autoreleasePoolPop(v5);

  return v13;
}

- (BOOL)sendResponsesForCommand:(id)command toQueue:(id)queue
{
  v23[1] = *MEMORY[0x1E69E9840];
  commandCopy = command;
  queueCopy = queue;
  [(MFIMAPConnection *)self mf_lock];
  v23[0] = commandCopy;
  v8 = [MEMORY[0x1E695DEC8] arrayWithObjects:v23 count:1];
  v9 = [(MFIMAPConnection *)self _sendCommands:v8 response:0];

  if (v9)
  {
    v10 = +[MFActivityMonitor currentMonitor];
    sequenceNumber = [commandCopy sequenceNumber];
    do
    {
      v12 = objc_autoreleasePoolPush();
      v13 = [(MFIMAPConnection *)self _copyNextServerResponseForCommand:commandCopy];
      shouldCancel = [v10 shouldCancel];
      if (v13)
      {
        v15 = shouldCancel;
      }

      else
      {
        v15 = 1;
      }

      if ((v15 & 1) != 0 || ([v13 isUntagged] & 1) == 0 && (objc_msgSend(v13, "tag"), v18 = objc_claimAutoreleasedReturnValue(), v19 = sequenceNumber == objc_msgSend(v18, "intValue"), v18, v19))
      {
        v16 = 1;
        v17 = 1;
      }

      else
      {
        v16 = [queueCopy addItem:v13];
        v17 = 0;
      }

      objc_autoreleasePoolPop(v12);
    }

    while (!(v17 & 1 | ((v16 & 1) == 0)));

    v20 = v17 & v16;
  }

  else
  {
    v20 = 1;
  }

  [(MFIMAPConnection *)self locked_scheduleIdle];
  [(MFIMAPConnection *)self mf_unlock];

  v21 = *MEMORY[0x1E69E9840];
  return v20;
}

- (BOOL)sendResponsesForUIDFetchForUIDs:(id)ds fields:(id)fields toQueue:(id)queue
{
  v22[2] = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  fieldsCopy = fields;
  queueCopy = queue;
  v11 = +[MFActivityMonitor currentMonitor];
  v12 = uidSetForUIDArray(dsCopy);
  v13 = 1;
  while ([v12 count] && (objc_msgSend(v11, "shouldCancel") & 1) == 0)
  {
    v21 = 0;
    v14 = [(MFIMAPConnection *)self messageSetForUIDs:v12 maxTokens:500 remainder:&v21];
    v15 = v21;

    v16 = [_MFIMAPCommandParameters alloc];
    v22[0] = v14;
    v22[1] = fieldsCopy;
    v17 = [MEMORY[0x1E695DEC8] arrayWithObjects:v22 count:2];
    v18 = [(_MFIMAPCommandParameters *)v16 initWithCommand:21 arguments:v17];

    LOBYTE(v17) = [(MFIMAPConnection *)self sendResponsesForCommand:v18 toQueue:queueCopy];
    v13 &= v17;
    v12 = v15;
  }

  v19 = *MEMORY[0x1E69E9840];
  return v13 & 1;
}

- (BOOL)sendSkeletonResponsesForUIDs:(id)ds includeTo:(BOOL)to toQueue:(id)queue
{
  dsCopy = ds;
  queueCopy = queue;
  _fetchArgumentForMessageSkeletonsWithAllHeaders = [(MFIMAPConnection *)self _fetchArgumentForMessageSkeletonsWithAllHeaders];
  LOBYTE(self) = [(MFIMAPConnection *)self sendResponsesForUIDFetchForUIDs:dsCopy fields:_fetchArgumentForMessageSkeletonsWithAllHeaders toQueue:queueCopy];

  return self;
}

- (BOOL)sendUidAndFlagResponsesForUIDs:(id)ds sequenceIdentifierProvider:(id)provider flagSearchResults:(id)results toQueue:(id)queue
{
  dsCopy = ds;
  providerCopy = provider;
  resultsCopy = results;
  queueCopy = queue;
  if (resultsCopy || ![(MFIMAPConnection *)self supportsCapability:16])
  {
    _fetchArgumentForMessageUidsAndFlags = [(MFIMAPConnection *)self _fetchArgumentForMessageUidsAndFlags];
    LOBYTE(self) = [(MFIMAPConnection *)self sendResponsesForUIDs:dsCopy fields:_fetchArgumentForMessageUidsAndFlags flagSearchResults:resultsCopy toQueue:queueCopy];
  }

  else
  {
    v14 = [providerCopy sequenceIdentifierForUIDs:dsCopy];
    v18 = v14;
    LODWORD(self) = [(MFIMAPConnection *)self sendResponsesForCondStoreFlagFetchForUIDs:dsCopy withSequenceIdentifier:&v18 toQueue:queueCopy];
    v15 = v18;

    [queueCopy flush];
    if (self && [v15 length] && (objc_msgSend(v15, "isEqualToString:", v14) & 1) == 0)
    {
      [providerCopy setSequenceIdentifier:v15 forUIDs:dsCopy];
    }
  }

  return self;
}

- (BOOL)sendUidResponsesForSearchArguments:(id)arguments toQueue:(id)queue
{
  argumentsCopy = arguments;
  queueCopy = queue;
  v22 = 0;
  if ([(MFIMAPConnection *)self supportsCapability:15])
  {
    v8 = +[MFActivityMonitor currentMonitor];
    v9 = [(MFIMAPConnection *)self eSearchIDSet:0 areMessageSequenceNumbers:0 arguments:argumentsCopy success:&v22 returning:4];
    v10 = [v9 objectForKey:@"IMAPESearchAllKey"];
    v11 = v10;
    if (v22 && v10)
    {
      context = objc_autoreleasePoolPush();
      array = [MEMORY[0x1E695DF70] array];
      for (i = [v11 firstIndex]; ; i = objc_msgSend(v11, "indexGreaterThanIndex:", i))
      {
        shouldCancel = [v8 shouldCancel];
        v15 = i == 0x7FFFFFFFFFFFFFFFLL ? 1 : shouldCancel;
        if (v15)
        {
          break;
        }

        v16 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:i];
        [array addObject:v16];
      }

      if (([v8 shouldCancel] & 1) == 0)
      {
        v19 = objc_alloc_init(MFIMAPResponse);
        [(MFIMAPResponse *)v19 setResponseType:14];
        [(MFIMAPResponse *)v19 setSearchResults:array];
        [queueCopy addItem:v19];
      }

      objc_autoreleasePoolPop(context);
    }

    v18 = v22;
  }

  else
  {
    v17 = [[_MFIMAPCommandParameters alloc] initWithCommand:24 arguments:argumentsCopy];
    v18 = [(MFIMAPConnection *)self sendResponsesForCommand:v17 toQueue:queueCopy];
  }

  return v18;
}

- (id)searchUIDs:(id)ds withFlagRequests:(id)requests
{
  v30 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  v22 = dsCopy;
  requestsCopy = requests;
  _fetchArgumentForMessageUidsAndFlags = [(MFIMAPConnection *)self _fetchArgumentForMessageUidsAndFlags];
  v8 = [@"(UID FLAGS)" isEqualToString:_fetchArgumentForMessageUidsAndFlags];

  if (v8)
  {
    v20 = [dsCopy objectAtIndex:0];
    lastObject = [dsCopy lastObject];
    v9 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@:%@", v20, lastObject];
    v10 = objc_alloc_init(MFIMAPConnectionFlagSearchResults);
    v28 = 1;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v11 = requestsCopy;
    v12 = [v11 countByEnumeratingWithState:&v24 objects:v29 count:16];
    if (v12)
    {
      v13 = *v25;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v25 != v13)
          {
            objc_enumerationMutation(v11);
          }

          v15 = *(*(&v24 + 1) + 8 * i);
          searchTerms = [v15 searchTerms];
          v17 = [(MFIMAPConnection *)self searchUidSet:v9 forTerms:searchTerms success:&v28];

          if (v28 != 1)
          {

            v10 = 0;
            goto LABEL_13;
          }

          -[MFIMAPConnectionFlagSearchResults cacheStateForUIDs:mask:existenceSetsFlag:](v10, "cacheStateForUIDs:mask:existenceSetsFlag:", v17, [v15 mask], objc_msgSend(v15, "isPositiveMatch"));
        }

        v12 = [v11 countByEnumeratingWithState:&v24 objects:v29 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }

  else
  {
    v10 = 0;
  }

  v18 = *MEMORY[0x1E69E9840];

  return v10;
}

- (BOOL)sendResponsesForUIDs:(id)ds fields:(id)fields flagSearchResults:(id)results toQueue:(id)queue
{
  v27 = *MEMORY[0x1E69E9840];
  dsCopy = ds;
  fieldsCopy = fields;
  resultsCopy = results;
  queueCopy = queue;
  if (resultsCopy)
  {
    v24 = 0u;
    v25 = 0u;
    v22 = 0u;
    v23 = 0u;
    v14 = dsCopy;
    v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
    if (v15)
    {
      v16 = *v23;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v23 != v16)
          {
            objc_enumerationMutation(v14);
          }

          v18 = [resultsCopy copyResponseForUID:{objc_msgSend(*(*(&v22 + 1) + 8 * i), "integerValue", v22)}];
          if (v18)
          {
            [queueCopy addItem:v18];
          }
        }

        v15 = [v14 countByEnumeratingWithState:&v22 objects:v26 count:16];
      }

      while (v15);
    }

    v19 = 1;
  }

  else
  {
    v19 = [(MFIMAPConnection *)self sendResponsesForUIDFetchForUIDs:dsCopy fields:fieldsCopy toQueue:queueCopy];
  }

  v20 = *MEMORY[0x1E69E9840];
  return v19;
}

- (void)didFinishCommands:(id)commands
{
  v34 = *MEMORY[0x1E69E9840];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = commands;
  v4 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
  if (v4)
  {
    v23 = *v26;
    do
    {
      v24 = v4;
      for (i = 0; i != v24; ++i)
      {
        if (*v26 != v23)
        {
          objc_enumerationMutation(obj);
        }

        v6 = *(*(&v25 + 1) + 8 * i);
        untaggedResponses = [v6 untaggedResponses];
        v8 = [untaggedResponses count];

        if (v8)
        {
          v9 = 0;
          v10 = 0;
          while (1)
          {
            untaggedResponses2 = [v6 untaggedResponses];
            v12 = [untaggedResponses2 objectAtIndexedSubscript:v9];

            responseType = [v12 responseType];
            if (responseType > 8)
            {
              if ((responseType - 10) >= 2)
              {
                if (responseType == 9)
                {
                  WeakRetained = objc_loadWeakRetained(&self->_delegate);
                  if (WeakRetained && (*&self->_delegateState & 0x10) != 0)
                  {
                    -[NSObject setServerMessageCount:](WeakRetained, "setServerMessageCount:", [v12 number]);
                  }

                  goto LABEL_36;
                }

                if (responseType != 17)
                {
                  goto LABEL_43;
                }
              }
            }

            else
            {
              if (responseType > 3)
              {
                switch(responseType)
                {
                  case 4:
                    WeakRetained = +[MFIMAPConnection log];
                    if (os_log_type_enabled(WeakRetained, OS_LOG_TYPE_ERROR))
                    {
                      v20 = _IMAPCommandTable[[v6 command]];
                      *buf = 136315394;
                      v30 = v20;
                      v31 = 2112;
                      v32 = v12;
                      _os_log_error_impl(&dword_1B0389000, WeakRetained, OS_LOG_TYPE_ERROR, "Unhandled response to command %s: %@", buf, 0x16u);
                    }

                    break;
                  case 6:
                    v17 = +[MFIMAPConnection log];
                    if (os_log_type_enabled(v17, OS_LOG_TYPE_DEFAULT))
                    {
                      v18 = _IMAPCommandTable[[v6 command]];
                      *buf = 136315394;
                      v30 = v18;
                      v31 = 2112;
                      v32 = v12;
                      _os_log_impl(&dword_1B0389000, v17, OS_LOG_TYPE_DEFAULT, "MFIMAPConnection was lost during processing of command %s: %@.", buf, 0x16u);
                    }

                    v10 = 1;
                    goto LABEL_40;
                  case 7:
                    WeakRetained = [v12 capabilities];
                    if (WeakRetained)
                    {
                      [(MFIMAPConnection *)self mf_lock];
                      [(MFIMAPConnection *)self _clearCapabilities];
                      [(MFIMAPConnection *)self _addCapabilities:WeakRetained];
                      [(MFIMAPConnection *)self mf_unlock];
                    }

                    break;
                  default:
                    goto LABEL_43;
                }

                goto LABEL_36;
              }

              if (responseType == 2)
              {
                if ([v12 responseCode] == 12)
                {
                  WeakRetained = objc_loadWeakRetained(&self->_delegate);
                  if (WeakRetained && (*&self->_delegateState & 0x20) != 0)
                  {
                    responseInfo = [v12 responseInfo];
                    -[NSObject setHighestModSequence:](WeakRetained, "setHighestModSequence:", [responseInfo unsignedLongLongValue]);
                  }

LABEL_36:
                }
              }

              else
              {
                if (responseType != 3)
                {
LABEL_43:
                  ++v9;
                  goto LABEL_41;
                }

                v15 = MFLogGeneral();
                if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
                {
                  [(MFIMAPConnection *)self _errorForResponse:v12 commandParams:v6];
                  objc_claimAutoreleasedReturnValue();
                  [MFIMAPConnection didFinishCommands:];
                }

                self->_gotBadResponse = 1;
              }
            }

LABEL_40:
            untaggedResponses3 = [v6 untaggedResponses];
            [untaggedResponses3 removeObjectAtIndex:v9];

            --v8;
LABEL_41:

            if (v9 >= v8)
            {
              if (v10)
              {
                [(MFIMAPConnection *)self disconnectAndNotifyDelegate:1];
              }

              break;
            }
          }
        }

        [v6 setUntaggedResponses:0];
      }

      v4 = [obj countByEnumeratingWithState:&v25 objects:v33 count:16];
    }

    while (v4);
  }

  v21 = *MEMORY[0x1E69E9840];
}

- (id)_logStringForIDs:(id)ds
{
  dsCopy = ds;
  v4 = dsCopy;
  if ([dsCopy length] >= 0x65)
  {
    v5 = MEMORY[0x1E696AEC0];
    v6 = [dsCopy substringToIndex:100];
    v4 = [v5 stringWithFormat:@"%@ ...", v6];
  }

  return v4;
}

- (id)_logStringForCommand:(id)command
{
  commandCopy = command;
  if ([commandCopy command] == 38)
  {
    v5 = "";
  }

  else
  {
    v5 = _IMAPCommandTable[[commandCopy command]];
  }

  v6 = &stru_1F273A5E0;
  command = [commandCopy command];
  if (command <= 23)
  {
    if (command <= 21)
    {
      if ((command - 20) < 2)
      {
        arguments = [commandCopy arguments];
        v9 = [arguments count];

        arguments2 = [commandCopy arguments];
        firstObject = [arguments2 firstObject];

        if ([firstObject length] >= 0x65)
        {
          v12 = MEMORY[0x1E696AEC0];
          v13 = [firstObject substringToIndex:100];
          v14 = [v12 stringWithFormat:@"%@ ...", v13];

          firstObject = v14;
        }

        v15 = @" ...";
        if (v9 <= 2)
        {
          v15 = &stru_1F273A5E0;
        }

        arguments5 = v15;
        v17 = MEMORY[0x1E696AEC0];
        arguments3 = [commandCopy arguments];
        v19 = [arguments3 objectAtIndexedSubscript:1];
        v20 = [v17 stringWithFormat:@"%@ %@%@", firstObject, v19, arguments5];
        goto LABEL_21;
      }

      if (command != 13)
      {
        goto LABEL_29;
      }

      v26 = MEMORY[0x1E699B858];
      firstObject = [commandCopy arguments];
      arguments5 = [firstObject objectAtIndexedSubscript:0];
      v21 = [v26 partiallyRedactedStringForString:arguments5];
LABEL_24:
      v6 = v21;
LABEL_27:

LABEL_28:
      goto LABEL_29;
    }

    if (command == 22)
    {
      arguments4 = [commandCopy arguments];
      firstObject2 = [arguments4 firstObject];
      firstObject = [(MFIMAPConnection *)self _logStringForIDs:firstObject2];

      v29 = MEMORY[0x1E696AEC0];
      arguments5 = [commandCopy arguments];
      arguments3 = [(__CFString *)arguments5 objectAtIndexedSubscript:1];
      v6 = [v29 stringWithFormat:@"%@ %@", firstObject, arguments3];
      goto LABEL_26;
    }

LABEL_20:
    arguments6 = [commandCopy arguments];
    firstObject3 = [arguments6 firstObject];
    firstObject = [(MFIMAPConnection *)self _logStringForIDs:firstObject3];

    v24 = MEMORY[0x1E696AEC0];
    v25 = MEMORY[0x1E699B858];
    arguments5 = [commandCopy arguments];
    arguments3 = [(__CFString *)arguments5 objectAtIndexedSubscript:1];
    v19 = [v25 partiallyRedactedStringForString:arguments3];
    v20 = [v24 stringWithFormat:@"%@ %@", firstObject, v19];
LABEL_21:
    v6 = v20;

LABEL_26:
    goto LABEL_27;
  }

  if (command > 36)
  {
    if (command != 37)
    {
      if (command != 38)
      {
        goto LABEL_29;
      }

      firstObject = [commandCopy arguments];
      v6 = [firstObject objectAtIndexedSubscript:0];
      goto LABEL_28;
    }

    goto LABEL_20;
  }

  if (command == 24 || command == 31)
  {
    firstObject = [commandCopy arguments];
    arguments5 = [(MFIMAPConnection *)self _publicDescriptionForSearchString:firstObject];
    v21 = [(__CFString *)arguments5 componentsJoinedByString:@" "];
    goto LABEL_24;
  }

LABEL_29:
  v30 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%lu %s %@", objc_msgSend(commandCopy, "sequenceNumber"), v5, v6];

  return v30;
}

- (id)_publicDescriptionForSearchString:(id)string
{
  v3 = [string ef_map:&__block_literal_global_522];

  return v3;
}

id __54__MFIMAPConnection__publicDescriptionForSearchString___block_invoke(uint64_t a1, void *a2)
{
  v2 = a2;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) != 0 && [v2 hasPrefix:@""])
  {
    v3 = MEMORY[0x1E699B858];
    v4 = [v2 substringFromIndex:1];
    v5 = [v3 partiallyRedactedStringForString:v4];
  }

  else
  {
    v5 = v2;
  }

  return v5;
}

- (MFIMAPConnectionDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

- (id)_searchUidsForMessageIDs:(id)ds excludeDeleted:(BOOL)deleted
{
  deletedCopy = deleted;
  dsCopy = ds;
  v7 = [dsCopy count];
  v8 = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:4 * v7];
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 3221225472;
  v13[2] = __80__MFIMAPConnection_ReferenceSearching___searchUidsForMessageIDs_excludeDeleted___block_invoke;
  v13[3] = &unk_1E7AA2CB0;
  v15 = v7 - 1;
  v9 = v8;
  v14 = v9;
  [dsCopy enumerateObjectsUsingBlock:v13];
  if (deletedCopy)
  {
    [v9 addObject:@"UNDELETED"];
  }

  v12 = 0;
  v10 = [(MFIMAPConnection *)self searchIDSet:0 forTerms:v9 success:&v12];

  return v10;
}

void __80__MFIMAPConnection_ReferenceSearching___searchUidsForMessageIDs_excludeDeleted___block_invoke(uint64_t a1, void *a2, unint64_t a3)
{
  v5 = a2;
  if (*(a1 + 40) > a3)
  {
    [*(a1 + 32) addObject:@"OR"];
  }

  [*(a1 + 32) addObject:@"HEADER"];
  [*(a1 + 32) addObject:@"Message-ID"];
  [*(a1 + 32) addObject:v5];
}

- (void)_sendApplePushForAccountIfSupported:.cold.1()
{
  v6 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  v4 = 2112;
  v5 = v0;
  _os_log_error_impl(&dword_1B0389000, v1, OS_LOG_TYPE_ERROR, "#aps-push account %@ rejected XAPPLEPUSHSERVICE request: %@", v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_sendApplePushForAccountIfSupported:(uint8_t *)buf .cold.2(uint64_t a1, void *a2, uint8_t *buf, os_log_t log)
{
  *buf = 138412546;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1B0389000, log, OS_LOG_TYPE_ERROR, "#aps-push account %@ specified bad version/topic in response: %@", buf, 0x16u);
}

- (void)_sendApplePushForAccountIfSupported:.cold.3()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3(&dword_1B0389000, v0, v1, "#aps-push account %@ received mailbox responses but version 1 response, ignoring mailboxes", v3);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)_doBasicConnectionUsingAccount:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_1(&dword_1B0389000, v3, v4, "*** Expected untagged initial response from %@", v5);
}

- (void)_doBasicConnectionUsingAccount:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_1(&dword_1B0389000, v3, v4, "*** Failed to read initial response from %@", v5);
}

- (void)_sendCommands:response:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(v1, v2, 5.7779e-34);
  OUTLINED_FUNCTION_1(&dword_1B0389000, v3, v4, "*** Invalid IMAP command %@", v5);
}

- (void)_sendCommands:response:.cold.2()
{
  v4 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_3(&dword_1B0389000, v0, v1, "%{public}@ failed to write commands", v3);
  v2 = *MEMORY[0x1E69E9840];
}

- (void)authenticateUsingAccount:.cold.1()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_1(&dword_1B0389000, v3, v4, "LOGIN failed due to non-ascii username: %{public}@", v5);
}

- (void)authenticateUsingAccount:.cold.2()
{
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_2(v1, v2, 5.8381e-34);
  OUTLINED_FUNCTION_1(&dword_1B0389000, v3, v4, "LOGIN failed with error %{public}@", v5);
}

- (void)_dictionaryFromSourceUIDs:destinationUIDs:.cold.1()
{
  v5 = *MEMORY[0x1E69E9840];
  OUTLINED_FUNCTION_4();
  v3 = 2112;
  v4 = v0;
  _os_log_error_impl(&dword_1B0389000, MEMORY[0x1E69E9C10], OS_LOG_TYPE_ERROR, "IMAPConnection: source UIDs count is different from destination UIDs (source: %@; destination: %@)", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

- (void)authenticateUsingAccount:authenticator:.cold.1()
{
  OUTLINED_FUNCTION_0();
  *v1 = 138412290;
  *v3 = v2;
  OUTLINED_FUNCTION_3(&dword_1B0389000, v5, v3, "IMAP auth failure: %@", v4);
}

- (void)authenticateUsingAccount:authenticator:.cold.2()
{
  OUTLINED_FUNCTION_0();
  *v1 = 138412290;
  *v3 = v2;
  OUTLINED_FUNCTION_3(&dword_1B0389000, v5, v3, "IMAP protocol error: %@", v4);
}

- (void)didFinishCommands:.cold.1()
{
  OUTLINED_FUNCTION_0();
  *v1 = 138412290;
  *v3 = v2;
  OUTLINED_FUNCTION_3(&dword_1B0389000, v5, v3, "%@", v4);
}

@end