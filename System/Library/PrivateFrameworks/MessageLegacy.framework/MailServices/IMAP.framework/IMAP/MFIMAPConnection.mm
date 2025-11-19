@interface MFIMAPConnection
+ (id)_UIDPlusInfoFromIMAPResponses:(id)a3;
+ (void)initialize;
+ (void)setReadSizeParameters;
- (BOOL)_doBasicConnectionUsingAccount:(id)a3;
- (BOOL)_doUidFetchWithRange:(id)a3 arguments:(id)a4 validateMessage:(BOOL)a5 responses:(id)a6;
- (BOOL)_sendMailboxCommand:(int)a3 withArguments:(id)a4;
- (BOOL)_tryConnectionUsingAccount:(id)a3;
- (BOOL)appendData:(id)a3 toMailboxNamed:(id)a4 flags:(id)a5 dateReceived:(id)a6 newMessageInfo:(id *)a7;
- (BOOL)authenticateUsingAccount:(id)a3;
- (BOOL)authenticateUsingAccount:(id)a3 authenticator:(id)a4;
- (BOOL)closeAndLogout;
- (BOOL)connectUsingAccount:(id)a3;
- (BOOL)copyUids:(id)a3 toMailboxNamed:(id)a4 newMessageInfo:(id *)a5;
- (BOOL)createMailbox:(id)a3;
- (BOOL)deleteMailbox:(id)a3;
- (BOOL)deleteMessagesOlderThanNumberOfDays:(int)a3;
- (BOOL)expunge;
- (BOOL)expungeUids:(id)a3;
- (BOOL)getQuotaForRootName:(id)a3;
- (BOOL)loginWithAccount:(id)a3 password:(id)a4;
- (BOOL)logout;
- (BOOL)performCustomCommand:(id)a3 withArguments:(id)a4;
- (BOOL)renameMailbox:(id)a3 toMailbox:(id)a4;
- (BOOL)selectMailbox:(id)a3 withAccount:(id)a4;
- (BOOL)sendResponsesForCommand:(id *)a3 toQueue:(id)a4;
- (BOOL)sendResponsesForCondStoreFlagFetchForUIDs:(id)a3 withSequenceIdentifier:(id *)a4 toQueue:(id)a5;
- (BOOL)sendResponsesForUIDFetchForUIDs:(id)a3 fields:(id)a4 toQueue:(id)a5;
- (BOOL)sendResponsesForUIDs:(id)a3 fields:(id)a4 flagSearchResults:(id)a5 toQueue:(id)a6;
- (BOOL)sendUidAndFlagResponsesForUIDs:(id)a3 sequenceIdentifierProvider:(id)a4 flagSearchResults:(id)a5 toQueue:(id)a6;
- (BOOL)sendUidResponsesForSearchArguments:(id)a3 toQueue:(id)a4;
- (BOOL)startTLSForAccount:(id)a3;
- (BOOL)subscribeMailbox:(id)a3;
- (BOOL)supportsCapability:(int)a3;
- (BOOL)unsubscribeMailbox:(id)a3;
- (MFIMAPConnection)init;
- (NSArray)additionalHeadersForFetch;
- (id)_copyNextServerResponseForCommand:(id *)a3;
- (id)_copyNextTaggedOrContinuationResponseForCommand:(id *)a3;
- (id)_doListCommand:(int)a3 withReference:(id)a4 mailboxName:(id)a5 options:(int)a6 getSpecialUse:(BOOL)a7 statusDataItems:(id)a8 statusEntriesByMailbox:(id *)a9;
- (id)_doNamespaceCommand;
- (id)_errorForResponse:(id)a3 commandParams:(id *)a4;
- (id)_fetchArgumentForMessageSkeletonsWithHeaders:(id)a3;
- (id)_getFirstLevelMessageIDsForReference:(id)a3;
- (id)_getReferencesForMessageSet:(id)a3;
- (id)_messageIDsFromFetchResultData:(id)a3;
- (id)_readDataOfLength:(int64_t)a3;
- (id)_responseFromSendingCommand:(id *)a3 andPossiblyCreateMailbox:(id)a4;
- (id)_responseFromSendingCommands:(id *)a3 count:(unint64_t)a4;
- (id)_searchUidsForMessageIDs:(id)a3 excludeDeleted:(BOOL)a4;
- (id)_serverErrorForAccount:(id)a3 response:(id)a4 command:(id *)a5;
- (id)capabilities;
- (id)copyArgumentForSearchTerm:(id)a3;
- (id)copyDiagnosticInformation;
- (id)description;
- (id)eSearchIDSet:(id)a3 areMessageSequenceNumbers:(BOOL)a4 arguments:(id)a5 success:(BOOL *)a6 returning:(int)a7;
- (id)fetchHeadersForUid:(unsigned int)a3;
- (id)fetchMessageIdsForUids:(id)a3;
- (id)fetchUniqueRemoteIDsForUids:(id)a3;
- (id)messageSetForNumbers:(id)a3;
- (id)messageSetForNumbers:(id)a3 range:(_NSRange)a4 maxTokens:(unint64_t)a5 indexOfLastNumber:(unint64_t *)a6;
- (id)messageSetForRange:(id)a3;
- (id)messageSetForRange:(id)a3 butNotNumbers:(id)a4;
- (id)parenthesizedStringWithObjects:(id)a3;
- (id)parseIndexSetFromSequenceSet:(id)a3;
- (id)quotaPercentagesForMailbox:(id)a3;
- (id)searchIDSet:(id)a3 forTerms:(id)a4 success:(BOOL *)a5;
- (id)searchUIDs:(id)a3 withFlagRequests:(id)a4;
- (id)searchUidSet:(id)a3 forNewMessageIDs:(id)a4;
- (id)searchUidSet:(id)a3 forTerms:(id)a4 success:(BOOL *)a5;
- (id)separatorChar;
- (id)serverPathPrefix;
- (id)uidsReferencedBy:(id)a3;
- (int)_doIMAPLoginForAccount:(id)a3 quotedUsername:(id)a4 password:(id)a5;
- (int)connectionState;
- (int)fillLiteralBuffer:(char *)a3 count:(unint64_t)a4 dataLength:(unint64_t)a5 nonSynchronizingLiteral:(BOOL *)a6;
- (int64_t)_moveMessageSet:(id)a3 toMailboxName:(id)a4 command:(int)a5 newMessageInfo:(id *)a6;
- (unint64_t)_sendCommands:(id *)a3 count:(unint64_t)a4 response:(id *)a5;
- (unint64_t)countForSearchOfIDSet:(id)a3 forTerms:(id)a4 success:(BOOL *)a5;
- (unint64_t)countForSearchOfUidSet:(id)a3 forTerms:(id)a4 success:(BOOL *)a5;
- (unsigned)literalChunkSize;
- (unsigned)readBufferSize;
- (void)_addCapabilities:(id)a3;
- (void)_clearCapabilities;
- (void)_enableCompressionIfSupported;
- (void)_fetchCapabilities;
- (void)_sendApplePushForAccountIfSupported:(id)a3;
- (void)_sendClientInfoIfSupported;
- (void)_updateCapabilitiesForAccount:(id)a3 withAuthenticationResponse:(id)a4;
- (void)_updateSearchCapabilityWithAccount:(id)a3;
- (void)close;
- (void)dealloc;
- (void)didFinishCommands:(id *)a3 count:(unint64_t)a4;
- (void)disconnectAndNotifyDelegate:(BOOL)a3;
- (void)fetchStatusForMailboxes:(id)a3 args:(id)a4;
- (void)fetchTotalSize:(unint64_t *)a3 andMessageCount:(unsigned int *)a4;
- (void)finishIdle;
- (void)handleBytesAvailable;
- (void)handleStreamEvent:(unint64_t)a3;
- (void)locked_finishIdle;
- (void)locked_scheduleIdle;
- (void)locked_scheduleIdleResetAfterDelay:(double)a3;
- (void)locked_startIdle;
- (void)noop;
- (void)notifyDelegateOfBodyLoadAppendage:(id)a3 section:(id)a4;
- (void)notifyDelegateOfBodyLoadCompletion:(id)a3 section:(id)a4;
- (void)notifyDelegateOfBodyLoadStart:(id)a3 section:(id)a4;
- (void)parseESearchResponseWithContext:(id)a3;
- (void)parseSearchReturn:(id)a3;
- (void)scheduleIdleReset;
- (void)setAdditionalHeadersForFetch:(id)a3;
- (void)setDelegate:(id)a3;
- (void)setReadBufferSizeFromElapsedTime:(double)a3 bytesRead:(unint64_t)a4;
- (void)unselect;
@end

@implementation MFIMAPConnection

- (BOOL)sendResponsesForCondStoreFlagFetchForUIDs:(id)a3 withSequenceIdentifier:(id *)a4 toQueue:(id)a5
{
  v6 = self;
  v45[3] = *MEMORY[0x277D85DE8];
  v7 = [(MFIMAPConnection *)self messageSetForNumbers:a3];
  v8 = MEMORY[0x277CCACA8];
  if (a4 && [*a4 length])
  {
    v9 = *a4;
  }

  else
  {
    v9 = @"0";
  }

  v45[0] = v7;
  v45[1] = @"(FLAGS)";
  v45[2] = [v8 stringWithFormat:@"(CHANGEDSINCE %@)", v9];
  v39[1] = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:3];
  v39[0] = 21;
  v41 = 0;
  v42 = 0;
  v40 = 0;
  v10 = [-[MFIMAPConnection _responseFromSendingCommands:count:](v6 _responseFromSendingCommands:v39 count:{1), "responseType"}];
  if (v10 == 2)
  {
    v37 = 0u;
    v38 = 0u;
    v35 = 0u;
    v36 = 0u;
    obj = v40;
    v11 = [v40 countByEnumeratingWithState:&v35 objects:v44 count:16];
    if (v11)
    {
      v12 = v11;
      v27 = a4;
      v28 = v6;
      v13 = 0;
      v14 = 0;
      v15 = *v36;
      do
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v36 != v15)
          {
            objc_enumerationMutation(obj);
          }

          v17 = *(*(&v35 + 1) + 8 * i);
          if ([v17 responseType] == 17)
          {
            v18 = [v17 fetchResults];
            v31 = 0u;
            v32 = 0u;
            v33 = 0u;
            v34 = 0u;
            v19 = [v18 countByEnumeratingWithState:&v31 objects:v43 count:16];
            if (v19)
            {
              v20 = v19;
              v21 = *v32;
              do
              {
                for (j = 0; j != v20; ++j)
                {
                  if (*v32 != v21)
                  {
                    objc_enumerationMutation(v18);
                  }

                  v23 = [*(*(&v31 + 1) + 8 * j) modSequenceNumber];
                  v24 = v23 > v13;
                  if (v23 > v13)
                  {
                    v13 = v23;
                  }

                  v14 |= v24;
                }

                v20 = [v18 countByEnumeratingWithState:&v31 objects:v43 count:16];
              }

              while (v20);
            }

            [a5 addItem:v17];
          }
        }

        v12 = [obj countByEnumeratingWithState:&v35 objects:v44 count:16];
      }

      while (v12);
      v6 = v28;
      v10 = 2;
      if (v27 != 0 && (v14 & 1) != 0)
      {
        *v27 = [MEMORY[0x277CCACA8] stringWithFormat:@"%llu", v13];
      }
    }
  }

  [(MFIMAPConnection *)v6 didFinishCommands:v39 count:1];
  v25 = *MEMORY[0x277D85DE8];
  return v10 == 2;
}

- (id)eSearchIDSet:(id)a3 areMessageSequenceNumbers:(BOOL)a4 arguments:(id)a5 success:(BOOL *)a6 returning:(int)a7
{
  v13 = [objc_allocWithZone(MEMORY[0x277CBEB18]) initWithCapacity:{objc_msgSend(a5, "count") + 2 * (a3 != 0)}];
  v27[1] = v13;
  v27[0] = 24;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  if (!a7)
  {
    [MFIMAPConnection(ESearch) eSearchIDSet:areMessageSequenceNumbers:arguments:success:returning:];
  }

  v14 = v13;
  [v13 addObject:@"RETURN"];
  v15 = objc_msgSend(@"("), "mutableCopy";
  v16 = v15;
  if ((a7 & 1) == 0)
  {
    if ((a7 & 2) == 0)
    {
      if ((a7 & 4) == 0)
      {
        if ((a7 & 8) == 0)
        {
          goto LABEL_17;
        }

LABEL_16:
        [v16 appendString:@"COUNT"];
        goto LABEL_17;
      }

      goto LABEL_14;
    }

LABEL_12:
    [v16 appendString:@"MAX"];
    if ((a7 & 4) != 0)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  [v15 appendString:@"MIN"];
  if ((a7 & 2) != 0)
  {
    [v16 appendString:@" "];
    goto LABEL_12;
  }

  if ((a7 & 4) != 0)
  {
LABEL_13:
    [v16 appendString:@" "];
LABEL_14:
    [v16 appendString:@"ALL"];
    if ((a7 & 8) == 0)
    {
      goto LABEL_17;
    }

    goto LABEL_15;
  }

LABEL_9:
  if ((a7 & 8) != 0)
  {
LABEL_15:
    [v16 appendString:@" "];
    goto LABEL_16;
  }

LABEL_17:
  [v16 appendString:@""]);
  [v14 addObject:v16];

  if (a3)
  {
    if (!a4)
    {
      [v14 addObject:@"UID"];
    }

    [v14 addObject:a3];
  }

  [v14 addObjectsFromArray:a5];
  v17 = [-[MFIMAPConnection _responseFromSendingCommands:count:](self _responseFromSendingCommands:v27 count:{1), "responseType"}];
  if (a6)
  {
    *a6 = v17 == 2;
  }

  if (v17 == 2 && (v18 = [v28 count]) != 0)
  {
    v19 = v18;
    v20 = 0;
    v21 = 0;
    do
    {
      v22 = [v28 objectAtIndex:v21];
      if ([v22 responseType] == 20)
      {
        v20 = [v22 keyValuePairs];
        v23 = [objc_msgSend(v20 objectForKey:{@"IMAPESearchTagKey", "intValue"}];
        if (v29 != v23)
        {
          v24 = MFLogGeneral();
          if (os_log_type_enabled(v24, OS_LOG_TYPE_INFO))
          {
            v26 = 0;
            _os_log_impl(&dword_258B7A000, v24, OS_LOG_TYPE_INFO, "Got a response, but it was not for our tag.  Throwing out the results.", &v26, 2u);
          }

          v20 = 0;
        }

        [v28 removeObjectAtIndex:v21];
        --v19;
      }

      else
      {
        ++v21;
      }
    }

    while (v21 < v19);
  }

  else
  {
    v20 = 0;
  }

  [(MFIMAPConnection *)self didFinishCommands:v27 count:1];
  return v20;
}

- (id)parseIndexSetFromSequenceSet:(id)a3
{
  v4 = objc_alloc_init(MEMORY[0x277CCAB58]);
  v5 = [objc_alloc(MEMORY[0x277CCAC80]) initWithString:a3];
  v12 = 0;
  if (([v5 isAtEnd] & 1) == 0)
  {
    do
    {
      if (![v5 scanInteger:&v12])
      {
        break;
      }

      if ([v5 isAtEnd])
      {
        [v4 addIndex:v12];
      }

      else
      {
        v6 = [v5 scanLocation];
        v7 = [a3 characterAtIndex:v6];
        if (v7 == 44)
        {
          [v4 addIndex:v12];
          v8 = v6 + 1;
          goto LABEL_10;
        }

        if (v7 != 58)
        {
          v9 = MFLogGeneral();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_INFO))
          {
            LOWORD(v11) = 0;
            _os_log_impl(&dword_258B7A000, v9, OS_LOG_TYPE_INFO, "Got invalid value in sequence set", &v11, 2u);
          }

          continue;
        }

        [v5 setScanLocation:v6 + 1];
        v11 = 0;
        [v5 scanInteger:&v11];
        [v4 addIndexesInRange:?];
        if (([v5 isAtEnd] & 1) == 0)
        {
          v8 = [v5 scanLocation] + 1;
LABEL_10:
          [v5 setScanLocation:v8];
        }
      }
    }

    while (![v5 isAtEnd]);
  }

  return v4;
}

- (void)parseSearchReturn:(id)a3
{
  v5 = [a3 end];
  if (v5 > [a3 start])
  {
    do
    {
      if ([a3 match:"MIN"])
      {
        if (([a3 parseSpace] & 1) == 0)
        {
          [a3 emitWarning:@"Expected space"];
        }

        v6 = [a3 copyNumber];
        if (!v6)
        {
          [a3 emitError:@"Expected number for minimum result"];
        }

        v7 = [a3 response];
        v8 = v6;
        v9 = @"IMAPESearchMinKey";
      }

      else if ([a3 match:"MAX"])
      {
        if (([a3 parseSpace] & 1) == 0)
        {
          [a3 emitWarning:@"Expected space"];
        }

        v6 = [a3 copyNumber];
        if (!v6)
        {
          [a3 emitError:@"Expected number for maximum result"];
        }

        v7 = [a3 response];
        v8 = v6;
        v9 = @"IMAPESearchMaxKey";
      }

      else
      {
        if ([a3 match:"ALL"])
        {
          if (([a3 parseSpace] & 1) == 0)
          {
            [a3 emitWarning:@"Expected space"];
          }

          v11 = [a3 copyMessageSet];
          v12 = [(MFIMAPConnection *)self parseIndexSetFromSequenceSet:v11];

          [objc_msgSend(a3 "response")];
          goto LABEL_15;
        }

        if (![a3 match:"COUNT"])
        {
          [a3 emitError:@"Did not find a valid search return."];
          goto LABEL_15;
        }

        if (([a3 parseSpace] & 1) == 0)
        {
          [a3 emitWarning:@"Expected space"];
        }

        v6 = [a3 copyNumber];
        if (!v6)
        {
          [a3 emitError:@"Expected number for count result"];
        }

        v7 = [a3 response];
        v8 = v6;
        v9 = @"IMAPESearchCountKey";
      }

      [v7 setValue:v8 forKey:v9];

LABEL_15:
      [a3 parseSpace];
      v10 = [a3 end];
    }

    while (v10 > [a3 start]);
  }
}

- (void)parseESearchResponseWithContext:(id)a3
{
  if (([a3 parseSpace] & 1) == 0)
  {
    [a3 emitWarning:@"Expected space"];
  }

  if ([a3 match:"(")]
  {
    if ([a3 match:"TAG"])
    {
      if (([a3 parseSpace] & 1) == 0)
      {
        [a3 emitWarning:@"Expected space"];
      }

      v5 = [a3 copyQuotedString];
      [objc_msgSend(a3 "response")];
    }

    if (([a3 match:"]") & 1) == 0)
    {
      [a3 emitError:@"Expected right paren"];
    }
  }

  if ([a3 parseSpace])
  {
    if ([a3 match:"UID"])
    {
      if (([a3 parseSpace] & 1) == 0)
      {
        v6 = [a3 end];
        if (v6 != [a3 start])
        {
          [a3 emitWarning:@"Expected space"];
        }
      }
    }

    [(MFIMAPConnection *)self parseSearchReturn:a3];
  }
}

+ (void)initialize
{
  if (!_IMAPNeedsQuoteCharacterSet)
  {
    v3 = *MEMORY[0x277CBECE8];
    Mutable = CFCharacterSetCreateMutable(*MEMORY[0x277CBECE8]);
    v8.location = 32;
    v8.length = 94;
    CFCharacterSetAddCharactersInRange(Mutable, v8);
    CFCharacterSetInvert(Mutable);
    CFCharacterSetAddCharactersInString(Mutable, @"(){ %*\\"");
    _IMAPNeedsQuoteCharacterSet = CFCharacterSetCreateCopy(v3, Mutable);
    CFRelease(Mutable);
  }

  if (!_IMAPNeedsLiteralCharacterSet)
  {
    v5 = *MEMORY[0x277CBECE8];
    v6 = CFCharacterSetCreateMutable(*MEMORY[0x277CBECE8]);
    v9.location = 1;
    v9.length = 126;
    CFCharacterSetAddCharactersInRange(v6, v9);
    CFCharacterSetInvert(v6);
    CFCharacterSetAddCharactersInString(v6, @"\r\n");
    _IMAPNeedsLiteralCharacterSet = CFCharacterSetCreateCopy(v5, v6);
    CFRelease(v6);
  }

  [a1 setReadSizeParameters];
}

- (MFIMAPConnection)init
{
  v4.receiver = self;
  v4.super_class = MFIMAPConnection;
  v2 = [(MFConnection *)&v4 init];
  if (v2)
  {
    v2->_data = [objc_alloc(MEMORY[0x277CBEB28]) initWithCapacity:4096];
    v2->_expirationTime = 0.0;
    *(&v2->super.super.isa + *MEMORY[0x277D284B0]) = 0;
    *(v2 + 144) &= 0xF8u;
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
  v10.receiver = self;
  v10.super_class = MFIMAPConnection;
  v3 = [(MFConnection *)&v10 copyDiagnosticInformation];
  v4 = [v3 mutableCopy];
  v5 = v4;
  v6 = *(self + 60) | (*(self + 122) << 16);
  v7 = @"yes";
  if ((*(self + 60) & 0x20) != 0)
  {
    v8 = @"yes";
  }

  else
  {
    v8 = @"no";
  }

  [v4 appendFormat:@"    supports IDLE: %@\n", v8];
  if (![(MFIMAPConnection *)self isIdle])
  {
    v7 = @"no";
  }

  [v5 appendFormat:@"    using IDLE: %@ (seq=%lu)\n", v7, -[MFIMAPConnection idleCommandSequenceNumber](self, "idleCommandSequenceNumber")];
  [(MFIMAPConnection *)self mf_unlock];

  return v5;
}

- (void)setDelegate:(id)a3
{
  v5 = [MEMORY[0x277D24FC0] weakReferenceWithObject:?];
  p_delegateState = &self->_delegateState;
  holder = self->_delegateState.holder;
  if (holder != v5)
  {
    v8 = [(MFWeakReferenceHolder *)holder retainedReference];
    v9 = v8;
    if (v8 && (*(&self->_delegateState + 8) & 0x400) != 0)
    {
      [v8 willRemoveDelegation:self];
    }

    p_delegateState->holder = v5;
    self->_delegateState.delegate = a3;
    *(&self->_delegateState + 8) = *(&self->_delegateState + 8) & 0xFFFE | objc_opt_respondsToSelector() & 1;
    if (objc_opt_respondsToSelector())
    {
      v10 = 2;
    }

    else
    {
      v10 = 0;
    }

    *(&self->_delegateState + 8) = *(&self->_delegateState + 8) & 0xFFFD | v10;
    if (objc_opt_respondsToSelector())
    {
      v11 = 8;
    }

    else
    {
      v11 = 0;
    }

    *(&self->_delegateState + 8) = *(&self->_delegateState + 8) & 0xFFF7 | v11;
    if (objc_opt_respondsToSelector())
    {
      v12 = 16;
    }

    else
    {
      v12 = 0;
    }

    *(&self->_delegateState + 8) = *(&self->_delegateState + 8) & 0xFFEF | v12;
    if (objc_opt_respondsToSelector())
    {
      v13 = 32;
    }

    else
    {
      v13 = 0;
    }

    *(&self->_delegateState + 8) = *(&self->_delegateState + 8) & 0xFFDF | v13;
    if (objc_opt_respondsToSelector())
    {
      v14 = 64;
    }

    else
    {
      v14 = 0;
    }

    *(&self->_delegateState + 8) = *(&self->_delegateState + 8) & 0xFFBF | v14;
    if (objc_opt_respondsToSelector())
    {
      v15 = 128;
    }

    else
    {
      v15 = 0;
    }

    *(&self->_delegateState + 8) = *(&self->_delegateState + 8) & 0xFF7F | v15;
    if (objc_opt_respondsToSelector())
    {
      v16 = 256;
    }

    else
    {
      v16 = 0;
    }

    *(&self->_delegateState + 8) = *(&self->_delegateState + 8) & 0xFEFF | v16;
    if (objc_opt_respondsToSelector())
    {
      v17 = 512;
    }

    else
    {
      v17 = 0;
    }

    *(&self->_delegateState + 8) = *(&self->_delegateState + 8) & 0xFDFF | v17;
    if (objc_opt_respondsToSelector())
    {
      v18 = 1024;
    }

    else
    {
      v18 = 0;
    }

    *(&self->_delegateState + 8) = *(&self->_delegateState + 8) & 0xFBFF | v18;
    if (objc_opt_respondsToSelector())
    {
      v19 = 2048;
    }

    else
    {
      v19 = 0;
    }

    *(&self->_delegateState + 8) = *(&self->_delegateState + 8) & 0xF7FF | v19;
  }
}

- (void)_clearCapabilities
{
  self->_capabilities = 0;
  *(self + 122) = 0;
  *(self + 60) = 0;
}

- (void)_addCapabilities:(id)a3
{
  if (a3)
  {
    capabilities = self->_capabilities;
    if (!capabilities)
    {
      capabilities = [objc_msgSend(MEMORY[0x277CBEB58] allocWithZone:{-[MFIMAPConnection zone](self, "zone")), "initWithCapacity:", objc_msgSend(a3, "count")}];
      self->_capabilities = capabilities;
    }

    [(NSMutableSet *)capabilities addObjectsFromArray:a3];
    for (i = 0; i != 24; ++i)
    {
      if ([(NSMutableSet *)self->_capabilities containsObject:*(&off_2798B1758 + i)])
      {
        v7 = (1 << i) | *(self + 60) | (*(self + 122) << 16);
        *(self + 60) |= 1 << i;
        *(self + 122) = BYTE2(v7);
      }
    }
  }
}

- (void)_fetchCapabilities
{
  v8 = 0;
  v6 = 0u;
  v7 = 0u;
  if ([-[MFIMAPConnection _responseFromSendingCommands:count:](self _responseFromSendingCommands:&v6 count:{1), "responseType"}] == 2)
  {
    v3 = [v7 count];
    if (v3)
    {
      v4 = v3 - 1;
      do
      {
        v5 = [v7 objectAtIndex:v4];
        if ([v5 responseType] == 7)
        {
          -[MFIMAPConnection _addCapabilities:](self, "_addCapabilities:", [v5 capabilities]);
          [v7 removeObjectAtIndex:v4];
        }

        --v4;
      }

      while (v4 != -1);
    }
  }

  [(MFIMAPConnection *)self didFinishCommands:&v6 count:1];
}

- (void)_sendClientInfoIfSupported
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_debug_impl(&dword_258B7A000, v0, OS_LOG_TYPE_DEBUG, "sending ID command: %@", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)_sendApplePushForAccountIfSupported:(id)a3
{
  v96 = *MEMORY[0x277D85DE8];
  if (![MFUserAgent() canRegisterForAPSPush])
  {
    goto LABEL_14;
  }

  if ((*(self + 144) & 6) == 0)
  {
    v11 = MFLogGeneral();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      goto LABEL_14;
    }

    buf = 138412290;
    *buf_4 = a3;
    v8 = "#aps-push not registering for push on unauthenticated connection for account %@";
    goto LABEL_9;
  }

  if (![(MFIMAPConnection *)self supportsCapability:13])
  {
    v12 = MFLogGeneral();
    if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
    {
      buf = 138412290;
      *buf_4 = a3;
      _os_log_impl(&dword_258B7A000, v12, OS_LOG_TYPE_INFO, "#aps-push connection doesn't support XAPPLEPUSHSERVICE for account %@", &buf, 0xCu);
    }

    [a3 serverRegisteredMailboxes:0 withTopic:0 version:0xFFFFFFFFLL];
    goto LABEL_14;
  }

  [a3 uniqueIdForPersistentConnection];
  Style = PCSettingsGetStyle();
  if (Style)
  {
    v6 = Style;
    v7 = MFLogGeneral();
    if (!os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
    {
      goto LABEL_14;
    }

    buf = 67109378;
    *buf_4 = v6;
    *&buf_4[4] = 2112;
    *&buf_4[6] = a3;
    v8 = "#aps-push MCC push settings are not set to push (%d != PCStylePush) for account %@";
    v9 = v7;
    v10 = 18;
LABEL_10:
    _os_log_impl(&dword_258B7A000, v9, OS_LOG_TYPE_INFO, v8, &buf, v10);
    goto LABEL_14;
  }

  if (([a3 shouldRegisterForPush] & 1) == 0)
  {
    v11 = MFLogGeneral();
    if (!os_log_type_enabled(v11, OS_LOG_TYPE_INFO))
    {
      goto LABEL_14;
    }

    buf = 138412290;
    *buf_4 = a3;
    v8 = "#aps-push account %@ not registering for push";
LABEL_9:
    v9 = v11;
    v10 = 12;
    goto LABEL_10;
  }

  v14 = [+[MFAPSManager sharedManager](MFAPSManager "sharedManager")];
  v15 = [v14 ef_hexString];

  if (!v15)
  {
    v62 = MFLogGeneral();
    if (os_log_type_enabled(v62, OS_LOG_TYPE_INFO))
    {
      buf = 138412290;
      *buf_4 = a3;
      _os_log_impl(&dword_258B7A000, v62, OS_LOG_TYPE_INFO, "#aps-push failed to get device token while registering for push on account %@", &buf, 0xCu);
    }

    v63 = 0;
    v30 = 0;
    goto LABEL_89;
  }

  v74 = v15;
  v69 = self;
  v68 = objc_autoreleasePoolPush();
  v71 = a3;
  v72 = [a3 uniqueId];
  v16 = [a3 mailboxNamesForPushRegistration];
  v17 = objc_msgSend(MEMORY[0x277CCAB68], "stringWithString:", @"(");
  v79 = 0u;
  v80 = 0u;
  v81 = 0u;
  v82 = 0u;
  v18 = [v16 countByEnumeratingWithState:&v79 objects:v95 count:16];
  if (v18)
  {
    v19 = v18;
    v20 = 0;
    v21 = *v80;
    do
    {
      v22 = 0;
      v23 = v20;
      do
      {
        if (*v80 != v21)
        {
          objc_enumerationMutation(v16);
        }

        v20 = v23 + 1;
        if (v23)
        {
          v24 = @" ";
        }

        else
        {
          v24 = &stru_2869E1DA0;
        }

        [v17 appendFormat:@"%@%@", v24, MFIMAPStringFromMailboxName(*(*(&v79 + 1) + 8 * v22++))];
        v23 = v20;
      }

      while (v19 != v22);
      v19 = [v16 countByEnumeratingWithState:&v79 objects:v95 count:16];
    }

    while (v19);
  }

  [v17 appendString:@""]);
  v94[0] = _IMAPCreateQuotedString(@"aps-version");
  v94[1] = _IMAPCreateQuotedString([MEMORY[0x277CCACA8] stringWithFormat:@"%d", 2]);
  v94[2] = _IMAPCreateQuotedString(@"aps-account-id");
  v94[3] = _IMAPCreateQuotedString(v72);
  v94[4] = _IMAPCreateQuotedString(@"aps-device-token");
  v94[5] = _IMAPCreateQuotedString(v74);
  v94[6] = _IMAPCreateQuotedString(@"aps-subtopic");
  v94[7] = _IMAPCreateQuotedString([objc_msgSend(MEMORY[0x277CCA8D8] "mainBundle")]);
  v94[8] = _IMAPCreateQuotedString(@"mailboxes");
  v94[9] = v17;
  v25 = [MEMORY[0x277CBEA60] arrayWithObjects:v94 count:10];
  v26 = MFLogGeneral();
  v27 = v71;
  if (os_log_type_enabled(v26, OS_LOG_TYPE_INFO))
  {
    v28 = [v25 componentsJoinedByString:@" "];
    buf = 138412546;
    *buf_4 = v71;
    *&buf_4[8] = 2112;
    *&buf_4[10] = v28;
    _os_log_impl(&dword_258B7A000, v26, OS_LOG_TYPE_INFO, "#aps-push account %@ registering for push: {%@}", &buf, 0x16u);
  }

  *buf_4 = 0;
  *&buf_4[4] = v25;
  buf = 35;
  v92 = 0;
  v93 = 0;
  *&buf_4[12] = 0;
  v29 = v69;
  if ([-[MFIMAPConnection _responseFromSendingCommands:count:](v69 _responseFromSendingCommands:&buf count:{1), "responseType"}] != 2)
  {
    v64 = MFLogGeneral();
    if (os_log_type_enabled(v64, OS_LOG_TYPE_ERROR))
    {
      [MFIMAPConnection _sendApplePushForAccountIfSupported:];
    }

    [v71 setLastPushRegistration:CFAbsoluteTimeGetCurrent()];
    v63 = 0;
    v30 = 0;
    v65 = v68;
    goto LABEL_88;
  }

  v30 = [objc_alloc(MEMORY[0x277CBEB58]) initWithCapacity:{objc_msgSend(v16, "count")}];
  v75 = 0u;
  v76 = 0u;
  v77 = 0u;
  v78 = 0u;
  v31 = *&buf_4[12];
  v32 = [*&buf_4[12] countByEnumeratingWithState:&v75 objects:v89 count:16];
  if (!v32)
  {
    v52 = 0;
    v63 = 0;
    goto LABEL_75;
  }

  v33 = v32;
  v70 = 0;
  v73 = 0;
  v34 = *v76;
  do
  {
    v35 = 0;
    do
    {
      if (*v76 != v34)
      {
        objc_enumerationMutation(v31);
      }

      v36 = *(*(&v75 + 1) + 8 * v35);
      if ([v36 responseType] == 21)
      {
        v37 = [v36 serverInfo];
        v38 = [v37 objectForKey:@"mailbox"];
        if (v38)
        {
          v39 = v38;
          v40 = MFLogGeneral();
          if (os_log_type_enabled(v40, OS_LOG_TYPE_INFO))
          {
            *v83 = 138412546;
            v84 = v27;
            v85 = 2112;
            v86 = v39;
            _os_log_impl(&dword_258B7A000, v40, OS_LOG_TYPE_INFO, "#aps-push account %@ will send pushes for mailbox '%@'", v83, 0x16u);
          }

          [v30 addObject:v39];
        }

        else
        {
          v41 = [v37 objectForKey:@"aps-version"];
          v42 = [v37 objectForKey:@"aps-topic"];
          if (v41)
          {
            v43 = v42 == 0;
          }

          else
          {
            v43 = 1;
          }

          if (v43)
          {
            v44 = MFLogGeneral();
            if (!os_log_type_enabled(v44, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_52;
            }

            *v83 = 138412802;
            v84 = v27;
            v85 = 2112;
            v86 = v41;
            v87 = 2112;
            v88 = v36;
            v45 = v44;
            v46 = "#aps-push account %@ (version %@) sent unknown push response %@";
          }

          else
          {
            v47 = v42;
            v48 = [v41 intValue];
            if (!v73)
            {
              v49 = v48;
              if ((v48 - 1) <= 1)
              {
                v73 = [v47 copy];
                v70 = v49;
LABEL_51:
                v27 = v71;
                goto LABEL_52;
              }
            }

            v50 = MFLogGeneral();
            if (!os_log_type_enabled(v50, OS_LOG_TYPE_ERROR))
            {
              goto LABEL_51;
            }

            *v83 = 138412802;
            v27 = v71;
            v84 = v71;
            v85 = 2112;
            v86 = v41;
            v87 = 2112;
            v88 = v36;
            v45 = v50;
            v46 = "#aps-push account %@ (version %@) ignoring invalid version in push response '%@'";
          }

          _os_log_error_impl(&dword_258B7A000, v45, OS_LOG_TYPE_ERROR, v46, v83, 0x20u);
        }
      }

LABEL_52:
      ++v35;
    }

    while (v33 != v35);
    v51 = [v31 countByEnumeratingWithState:&v75 objects:v89 count:16];
    v33 = v51;
  }

  while (v51);
  v52 = v70;
  if (v70 < 2)
  {
    v63 = v73;
    if (v70 == 1)
    {
      v65 = v68;
      v29 = v69;
LABEL_78:
      if ([v30 count])
      {
        v67 = MFLogGeneral();
        if (os_log_type_enabled(v67, OS_LOG_TYPE_ERROR))
        {
          [MFIMAPConnection _sendApplePushForAccountIfSupported:];
        }

        [v30 removeAllObjects];
      }

      goto LABEL_87;
    }

    v29 = v69;
LABEL_75:
    v65 = v68;
    v66 = MFLogGeneral();
    if (os_log_type_enabled(v66, OS_LOG_TYPE_ERROR))
    {
      [(MFIMAPConnection *)v27 _sendApplePushForAccountIfSupported:?];
    }

    v30 = 0;
    goto LABEL_78;
  }

  v53 = MFLogGeneral();
  if (os_log_type_enabled(v53, OS_LOG_TYPE_INFO))
  {
    v54 = [v16 mutableCopy];
    [v54 minusSet:v30];
    v55 = [v54 count];
    v56 = MFLogGeneral();
    v57 = os_log_type_enabled(v56, OS_LOG_TYPE_INFO);
    v29 = v69;
    if (v55)
    {
      if (v57)
      {
        v58 = [objc_msgSend(v54 "allObjects")];
        *v83 = 138412546;
        v84 = v27;
        v85 = 2112;
        v86 = v58;
        v59 = "#aps-push account %@ will NOT push these mailboxes {%@}";
        v60 = v56;
        v61 = 22;
        goto LABEL_84;
      }
    }

    else if (v57)
    {
      *v83 = 138412290;
      v84 = v27;
      v59 = "#aps-push account %@ will push all requested mailboxes";
      v60 = v56;
      v61 = 12;
LABEL_84:
      _os_log_impl(&dword_258B7A000, v60, OS_LOG_TYPE_INFO, v59, v83, v61);
    }
  }

  else
  {
    v29 = v69;
  }

  v65 = v68;
  v63 = v73;
LABEL_87:
  [v27 serverRegisteredMailboxes:v30 withTopic:v63 version:v52];
LABEL_88:
  [(MFIMAPConnection *)v29 didFinishCommands:&buf count:1];
  objc_autoreleasePoolPop(v65);
LABEL_89:

LABEL_14:
  v13 = *MEMORY[0x277D85DE8];
}

- (void)_enableCompressionIfSupported
{
  v6 = *MEMORY[0x277D85DE8];
  [a1 userString];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_debug_impl(v1, v2, OS_LOG_TYPE_DEBUG, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (BOOL)_doBasicConnectionUsingAccount:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v5 = *MEMORY[0x277D284B0];
  if (*(&self->super.super.isa + v5))
  {
    [(MFIMAPConnection *)self disconnectAndNotifyDelegate:0];
  }

  *(self + 144) &= 0xF8u;
  self->_expirationTime = 0.0;
  v18.receiver = self;
  v18.super_class = MFIMAPConnection;
  v6 = [(MFConnection *)&v18 connectUsingAccount:a3];
  if (v6)
  {
    self->_connectTime = CFAbsoluteTimeGetCurrent();
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    v7 = [(MFIMAPConnection *)self _copyNextServerResponseForCommand:v16];
    v8 = v7;
    if (v7)
    {
      if ([v7 isUntagged])
      {
        v9 = [v8 responseType];
        if (v9 == 5)
        {
          *(self + 144) = *(self + 144) & 0xF8 | 2;
        }

        else if (v9 == 2)
        {
          *(self + 144) = *(self + 144) & 0xF8 | 1;
          if ([v8 responseCode] == 14)
          {
            [(MFIMAPConnection *)self _clearCapabilities];
            -[MFIMAPConnection _addCapabilities:](self, "_addCapabilities:", [v8 responseInfo]);
          }
        }

        goto LABEL_16;
      }

      v10 = MFLogGeneral();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v13 = [*(&self->super.super.isa + v5) remoteHostname];
        *buf = 138412290;
        v20 = v13;
        v12 = "*** Expected untagged initial response from %@";
        goto LABEL_14;
      }
    }

    else
    {
      v10 = MFLogGeneral();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_INFO))
      {
        v11 = [*(&self->super.super.isa + v5) remoteHostname];
        *buf = 138412290;
        v20 = v11;
        v12 = "*** Failed to read initial response from %@";
LABEL_14:
        _os_log_impl(&dword_258B7A000, v10, OS_LOG_TYPE_INFO, v12, buf, 0xCu);
      }
    }

    [(MFIMAPConnection *)self disconnectAndNotifyDelegate:0];
LABEL_16:
    [(MFIMAPConnection *)self didFinishCommands:v16 count:1];

    LOBYTE(v6) = (*(self + 144) & 7) != 0;
  }

  v14 = *MEMORY[0x277D85DE8];
  return v6;
}

- (BOOL)_tryConnectionUsingAccount:(id)a3
{
  v5 = [(MFIMAPConnection *)self _doBasicConnectionUsingAccount:?];
  if (v5)
  {
    if ([a3 usesSSL] && (v6 = *MEMORY[0x277D284B0], objc_msgSend(*MEMORY[0x277CBF0A0], "isEqualToString:", objc_msgSend(*(&self->super.super.isa + v6), "securityProtocol"))))
    {
      v5 = [(MFIMAPConnection *)self startTLSForAccount:a3];
      if (v5)
      {
        v7 = [a3 clientCertificates];
        if (v7)
        {
          [*(&self->super.super.isa + v6) setClientCertificates:v7];
        }

        v8 = [*(&self->super.super.isa + v6) setSecurityProtocol:*MEMORY[0x277CBF098]];
        [(MFIMAPConnection *)self _updateCapabilitiesForAccount:a3 withAuthenticationResponse:0];
        LOBYTE(v5) = v8;
      }
    }

    else
    {
      LOBYTE(v5) = 1;
    }
  }

  return v5;
}

- (BOOL)connectUsingAccount:(id)a3
{
  v5 = [a3 hostname];
  v6 = [a3 credentialAccessibility];
  if (v6)
  {
    if (v6 == 1)
    {
      v7 = [a3 missingPasswordErrorWithTitle:MFLookupLocalizedString()];
LABEL_6:
      if (v7)
      {
        [objc_msgSend(MEMORY[0x277D283F8] "currentMonitor")];
      }

      return 0;
    }

    if (v6 == 2)
    {
      v7 = [a3 inaccessiblePasswordErrorWithTitle:MFLookupLocalizedString()];
      goto LABEL_6;
    }
  }

  else if (v5 && [v5 length])
  {
    [(MFIMAPConnection *)self mf_lock];
    v8 = [(MFIMAPConnection *)self _tryConnectionUsingAccount:a3];
    [(MFIMAPConnection *)self mf_unlock];
    return v8;
  }

  return 0;
}

- (void)disconnectAndNotifyDelegate:(BOOL)a3
{
  v3 = a3;
  [(MFIMAPConnection *)self mf_lock];
  v5 = *MEMORY[0x277D284B0];
  v6 = *(&self->super.super.isa + v5);
  if (v6)
  {
    [v6 setEventHandler:0];
    [*(&self->super.super.isa + v5) abort];

    *(&self->super.super.isa + v5) = 0;
    self->_expirationTime = 0.0;
  }

  [(MFConnection *)self endCompression];
  [(MFIMAPConnection *)self _clearCapabilities];

  self->_separatorChar = 0;
  self->_serverNamespace = 0;

  self->_selectedMailbox = 0;
  [(NSMutableData *)self->_data setLength:0];
  *(self + 144) &= 0xF8u;
  self->_commandNumber = 0;
  self->_idleCommandSequenceNumber = 0;
  [(MFIMAPConnection *)self mf_unlock];
  if (v3)
  {
    v7 = [(MFWeakReferenceHolder *)self->_delegateState.holder retainedReference];
    if (v7 && (*(&self->_delegateState + 8) & 8) != 0)
    {
      v8 = v7;
      [v7 connectionDidDisconnect:self];
      v7 = v8;
    }
  }
}

- (int)connectionState
{
  v2 = *MEMORY[0x277D284B0];
  if (!*(&self->super.super.isa + v2))
  {
    return 0;
  }

  [(MFIMAPConnection *)self mf_lock];
  if (self->_expirationTime != 0.0 && CFAbsoluteTimeGetCurrent() > self->_expirationTime)
  {
    [(MFIMAPConnection *)self noop];
  }

  v4 = *(&self->super.super.isa + v2);
  if (!v4 || ([v4 isValid] & 1) == 0)
  {
    *(self + 144) &= 0xF8u;
    v10 = *(&self->super.super.isa + v2);
    [(MFIMAPConnection *)self mf_unlock];
    v8 = 0;
    v9 = 0;
    if (!v10)
    {
      return v9;
    }

    goto LABEL_18;
  }

  if ((*(self + 144) & 7) == 0 || ![*(&self->super.super.isa + v2) isReadable])
  {
    v9 = *(self + 144) & 7;
    [(MFIMAPConnection *)self mf_unlock];
    return v9;
  }

  do
  {
    v13 = 0;
    memset(v12, 0, sizeof(v12));
    v5 = [(MFIMAPConnection *)self _copyNextServerResponseForCommand:v12];
    v6 = [v5 responseType] != 3 && objc_msgSend(v5, "responseType") != 6;
    [(MFIMAPConnection *)self didFinishCommands:v12 count:1];

    v7 = [*(&self->super.super.isa + v2) isReadable];
  }

  while (v6 && (v7 & 1) != 0);
  v8 = *(self + 144) & 7;
  [(MFIMAPConnection *)self mf_unlock];
  v9 = v8;
  if (!v6)
  {
LABEL_18:
    v9 = v8;
    if (!*(&self->super.super.isa + v2))
    {
      return v9;
    }

    [(MFIMAPConnection *)self disconnectAndNotifyDelegate:1];
    return 0;
  }

  return v9;
}

- (int)fillLiteralBuffer:(char *)a3 count:(unint64_t)a4 dataLength:(unint64_t)a5 nonSynchronizingLiteral:(BOOL *)a6
{
  if (!a6)
  {
    [MFIMAPConnection fillLiteralBuffer:a2 count:self dataLength:? nonSynchronizingLiteral:?];
  }

  *(self + 122);
  v11 = *(self + 60);
  if ((v11 & 2) != 0)
  {
    *a6 = 1;
  }

  else
  {
    if (a5 > 0x1000)
    {
      *a6 = 0;
LABEL_10:
      v12 = "";
      return snprintf(a3, a4, "{%lu%s}\r\n", a5, v12);
    }

    *a6 = (v11 & 4) != 0;
    if ((v11 & 4) == 0)
    {
      goto LABEL_10;
    }
  }

  v12 = "+";
  return snprintf(a3, a4, "{%lu%s}\r\n", a5, v12);
}

- (unint64_t)_sendCommands:(id *)a3 count:(unint64_t)a4 response:(id *)a5
{
  v67 = *MEMORY[0x277D85DE8];
  v60 = 0;
  v61 = &v60;
  v62 = 0x2020000000;
  v63 = 1;
  [(MFIMAPConnection *)self locked_finishIdle];
  [(NSMutableData *)self->_data setLength:0];
  if (!a4)
  {
    v8 = 0;
    v52 = 0;
    v7 = 0;
    v9 = 0x7FFFFFFFFFFFFFFFLL;
    goto LABEL_115;
  }

  v7 = 0;
  v55 = 0;
  v52 = 0;
  v8 = 0;
  v9 = 0x7FFFFFFFFFFFFFFFLL;
  while (1)
  {
    var0 = a3->var0;
    if (a3->var0 == 29)
    {
      var3 = 0;
      goto LABEL_10;
    }

    if (var0 != 32)
    {
      break;
    }

    var3 = a3->var3;
LABEL_9:
    v11 = self->_commandNumber + 1;
    self->_commandNumber = v11;
    a3->var3 = v11;
    __snprintf_chk(v66, 0x20uLL, 0, 0x20uLL, "%lu ", v11);
    [(NSMutableData *)self->_data mf_appendCString:v66];
LABEL_10:
    v56 = [a3->var1 count];
    v12 = a3->var0;
    if (v12 == 38)
    {
      if (!v56)
      {
        goto LABEL_112;
      }

      v13 = [a3->var1 objectAtIndex:0];
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_112;
      }

      -[NSMutableData mf_appendCString:](self->_data, "mf_appendCString:", [v13 UTF8String]);
      v14 = 1;
    }

    else
    {
      [(NSMutableData *)self->_data mf_appendCString:_IMAPCommandTable[v12]];
      v14 = 0;
    }

    if (v14 < v56)
    {
      v54 = a3;
      do
      {
        v15 = [a3->var1 objectAtIndex:v14];
        objc_opt_class();
        isKindOfClass = objc_opt_isKindOfClass();
        if ((isKindOfClass & 1) == 0 || ([v15 hasPrefix:@""]) & 1) == 0)
        {
          [(NSMutableData *)self->_data appendBytes:" " length:1];
          if ((isKindOfClass & 1) == 0)
          {
            objc_opt_class();
            if (objc_opt_isKindOfClass())
            {
              v18 = ++v14 == v56 && a3->var0 == 19;
              v21 = [v15 length];
              if (v18)
              {
                v21 += [v15 numberOfNewlinesNeedingConversion:0];
              }

              buf[0] = 0;
              [(NSMutableData *)self->_data appendBytes:v66 length:[(MFIMAPConnection *)self fillLiteralBuffer:v66 count:32 dataLength:v21 - var3 nonSynchronizingLiteral:buf]];
              v22 = [(MFConnection *)self writeData:self->_data dontLogBytesInRange:v9, v8];
              *(v61 + 24) = v22;
              if (!v22)
              {
                v23 = 0;
                goto LABEL_95;
              }

              if (buf[0])
              {
                v23 = 0;
                goto LABEL_39;
              }

              v23 = [(MFIMAPConnection *)self _copyNextTaggedOrContinuationResponseForCommand:v54];
              if ([v23 responseType] == 1)
              {
                if (v61[3])
                {
LABEL_39:
                  if ((buf[0] & 1) != 0 || v23)
                  {
                    if (v18)
                    {
                      [(NSMutableData *)self->_data setLength:0];
                      *(v61 + 24) = 1;
                      v57[0] = MEMORY[0x277D85DD0];
                      v57[1] = 3221225472;
                      v57[2] = __49__MFIMAPConnection__sendCommands_count_response___block_invoke_3;
                      v57[3] = &unk_2798B1870;
                      v57[4] = self;
                      v57[5] = &v60;
                      [v15 enumerateConvertingNewlinesUsingBlock:v57];
                    }

                    else
                    {
                      if (v54->var0 == 5)
                      {
                        v43 = v59;
                        v59[0] = MEMORY[0x277D85DD0];
                        v59[1] = 3221225472;
                        v44 = __49__MFIMAPConnection__sendCommands_count_response___block_invoke;
                      }

                      else
                      {
                        v43 = v58;
                        v58[0] = MEMORY[0x277D85DD0];
                        v58[1] = 3221225472;
                        v44 = __49__MFIMAPConnection__sendCommands_count_response___block_invoke_2;
                      }

                      v43[2] = v44;
                      v43[3] = &unk_2798B1848;
                      v43[4] = self;
                      v43[5] = &v60;
                      [v15 enumerateByteRangesUsingBlock:?];
                    }
                  }
                }

LABEL_95:
                [(NSMutableData *)self->_data setLength:0];

                v8 = 0;
                v9 = 0x7FFFFFFFFFFFFFFFLL;
                a3 = v54;
                v19 = v55;
                if ((v61[3] & 1) == 0)
                {
                  break;
                }

                goto LABEL_96;
              }

LABEL_101:
              v52 = v23;
              v23 = 0;
              *(v61 + 24) = 0;
              goto LABEL_95;
            }

            objc_opt_class();
            if ((objc_opt_isKindOfClass() & 1) == 0)
            {
              break;
            }

            v20 = ++v14 == v56 && a3->var0 == 19;
            v24 = [v15 length];
            if (v20)
            {
              v25 = [v15 bytes];
              v26 = v7;
              if (v24 < 1)
              {
                LOBYTE(v20) = 0;
              }

              else
              {
                v27 = v25;
                LOBYTE(v20) = 0;
                v28 = (v25 + v24);
                do
                {
                  v29 = memchr(v27, 10, v28 - v27);
                  if (v29 && (v29 == v27 || *(v29 - 1) != 13))
                  {
                    ++v24;
                    LOBYTE(v20) = 1;
                  }

                  if (v29)
                  {
                    v27 = v29 + 1;
                  }

                  else
                  {
                    v27 = v28;
                  }
                }

                while (v27 < v28);
              }
            }

            else
            {
              v26 = v7;
            }

            buf[0] = 0;
            v7 = v26;
            [(NSMutableData *)self->_data appendBytes:v66 length:[(MFIMAPConnection *)self fillLiteralBuffer:v66 count:32 dataLength:v24 - var3 nonSynchronizingLiteral:buf]];
            v30 = [(MFConnection *)self writeData:self->_data dontLogBytesInRange:v9, v8];
            *(v61 + 24) = v30;
            if (!v30)
            {
              v23 = 0;
              goto LABEL_95;
            }

            if (buf[0])
            {
              v23 = 0;
            }

            else
            {
              v23 = [(MFIMAPConnection *)self _copyNextTaggedOrContinuationResponseForCommand:v54];
              if ([v23 responseType] != 1)
              {
                goto LABEL_101;
              }

              if ((v61[3] & 1) == 0)
              {
                goto LABEL_95;
              }
            }

            if ((buf[0] & 1) == 0 && !v23)
            {
              goto LABEL_95;
            }

            if (!v20)
            {
              if (v54->var0 == 5)
              {
                v45 = -[MFConnection writeData:dontLogBytesInRange:](self, "writeData:dontLogBytesInRange:", v15, 0, [v15 length]);
              }

              else
              {
                v45 = [(MFConnection *)self writeData:v15];
              }

              *(v61 + 24) = v45;
              goto LABEL_95;
            }

            v31 = [v15 bytes];
            v32 = [v15 length];
            [(NSMutableData *)self->_data setLength:0];
            *(v61 + 24) = 1;
            if (v32 < 1)
            {
              goto LABEL_95;
            }

            v33 = &v31[v32];
            while (2)
            {
              v34 = v33 - v31;
              v35 = memchr(v31, 10, v33 - v31);
              v36 = v35;
              if (v35)
              {
                v37 = v35 - v31;
                if (v35 != v31)
                {
                  v38 = *(v35 - 1);
                  data = self->_data;
                  if (v38 == 13)
                  {
                    v34 = v37 + 1;
                    goto LABEL_76;
                  }

                  [(NSMutableData *)data appendBytes:v31 length:v37];
                }

                [(NSMutableData *)self->_data appendBytes:&_IMAPLineEnding length:2];
              }

              else
              {
                data = self->_data;
LABEL_76:
                [(NSMutableData *)data appendBytes:v31 length:v34];
              }

              if (v36)
              {
                v31 = v36 + 1;
              }

              else
              {
                v31 = v33;
              }

              if ([(NSMutableData *)self->_data length]> 0xFFF || v31 >= v33)
              {
                v41 = [(MFConnection *)self writeData:self->_data];
                *(v61 + 24) = v41;
                [(NSMutableData *)self->_data setLength:0];
              }

              if (*(v61 + 24) != 1 || v31 >= v33)
              {
                goto LABEL_95;
              }

              continue;
            }
          }
        }

        v17 = MFCreateDataWithString();
        if (a3->var0 == 5)
        {
          if (v14 != 1)
          {
            goto LABEL_29;
          }
        }

        else if (v14 != 1 || a3->var0 != 4)
        {
          goto LABEL_29;
        }

        v9 = [(NSMutableData *)self->_data length];
        v8 = [v17 length];
LABEL_29:
        [(NSMutableData *)self->_data appendData:v17];

        ++v14;
        v19 = v7;
LABEL_96:
        v7 = v19;
      }

      while (v14 != v56);
    }

    if (!v52)
    {
      [(NSMutableData *)self->_data appendBytes:&_IMAPLineEnding length:2];
      v52 = 0;
    }

LABEL_112:
    ++a3;
    if (++v55 == a4)
    {
      goto LABEL_115;
    }
  }

  if (var0 < 0x27)
  {
    var3 = 0;
    goto LABEL_9;
  }

  v48 = MFLogGeneral();
  if (os_log_type_enabled(v48, OS_LOG_TYPE_INFO))
  {
    v49 = a3->var0;
    *buf = 67109120;
    v65 = v49;
    _os_log_impl(&dword_258B7A000, v48, OS_LOG_TYPE_INFO, "*** Invalid IMAP command %d", buf, 8u);
  }

LABEL_115:
  if (*(v61 + 24) == 1 && [(NSMutableData *)self->_data length]&& [(MFConnection *)self writeData:self->_data dontLogBytesInRange:v9, v8])
  {
    v7 = a4;
  }

  [(NSMutableData *)self->_data setLength:0];
  if (a5)
  {
    *a5 = v52;
  }

  self->_expirationTime = CFAbsoluteTimeGetCurrent() + 1500.0;
  if (v7 < a4)
  {
    [(MFIMAPConnection *)self disconnectAndNotifyDelegate:1];
  }

  _Block_object_dispose(&v60, 8);
  v46 = *MEMORY[0x277D85DE8];
  return v7;
}

uint64_t __49__MFIMAPConnection__sendCommands_count_response___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [*(a1 + 32) writeBytes:a2 length:a4 dontLogBytesInRange:{0, a4}];
  *(*(*(a1 + 40) + 8) + 24) = result;
  *a5 = *(*(*(a1 + 40) + 8) + 24) ^ 1;
  return result;
}

uint64_t __49__MFIMAPConnection__sendCommands_count_response___block_invoke_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5)
{
  result = [*(a1 + 32) writeBytes:a2 length:a4 dontLogBytesInRange:{0x7FFFFFFFFFFFFFFFLL, 0}];
  *(*(*(a1 + 40) + 8) + 24) = result;
  *a5 = *(*(*(a1 + 40) + 8) + 24) ^ 1;
  return result;
}

uint64_t __49__MFIMAPConnection__sendCommands_count_response___block_invoke_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  [*(*(a1 + 32) + 208) appendBytes:a2 length:a3];
  if ([*(*(a1 + 32) + 208) length] > 0xFFF || a5 != 0)
  {
    *(*(*(a1 + 40) + 8) + 24) = [*(a1 + 32) writeData:*(*(a1 + 32) + 208)];
    [*(*(a1 + 32) + 208) setLength:0];
  }

  return *(*(*(a1 + 40) + 8) + 24);
}

- (id)_copyNextServerResponseForCommand:(id *)a3
{
  v4 = [[MFIMAPResponse alloc] initWithConnection:self responseConsumer:a3->var4];
  v5 = v4;
  if (!v4 || [(MFIMAPResponse *)v4 responseType]== 6)
  {
    [(MFIMAPConnection *)self disconnectAndNotifyDelegate:1];

    return 0;
  }

  return v5;
}

- (id)_copyNextTaggedOrContinuationResponseForCommand:(id *)a3
{
  var3 = a3->var3;
  v6 = EFStringWithUnsignedInteger();
  v7 = [(MFIMAPConnection *)self _copyNextServerResponseForCommand:a3];
  if (!v7)
  {
    return v7;
  }

  while ([v7 responseType] != 1 && ((objc_msgSend(v7, "isUntagged") & 1) != 0 || (objc_msgSend(v6, "isEqualToString:", objc_msgSend(v7, "tag")) & 1) == 0))
  {
    if ([v7 isUntagged])
    {
      v8 = [(MFWeakReferenceHolder *)self->_delegateState.holder retainedReference];
      v9 = v8;
      if (!v8 || (*(&self->_delegateState + 8) & 1) == 0)
      {

LABEL_9:
        var2 = a3->var2;
        if (!var2)
        {
          var2 = objc_alloc_init(MEMORY[0x277CBEB18]);
          a3->var2 = var2;
        }

        [var2 addObject:v7];
        goto LABEL_12;
      }

      v11 = [v8 connection:self shouldHandleUntaggedResponse:v7 forCommand:a3];

      if (v11)
      {
        goto LABEL_9;
      }
    }

LABEL_12:

    v7 = [(MFIMAPConnection *)self _copyNextServerResponseForCommand:a3];
    if (!v7)
    {
      return v7;
    }
  }

  v12 = [(MFWeakReferenceHolder *)self->_delegateState.holder retainedReference];
  v13 = v12;
  if (v12 && (*(&self->_delegateState + 8) & 2) != 0)
  {
    [v12 connection:self didReceiveResponse:v7 forCommand:a3];
  }

  return v7;
}

- (id)_errorForResponse:(id)a3 commandParams:(id *)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277D283F8] currentMonitor];
  if (a4->var0 == 13 && (v8 = [*(&self->super.super.isa + *MEMORY[0x277D284B0]) remoteHostname]) != 0)
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:MFLookupLocalizedString(), v8];
  }

  else
  {
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:MFLookupLocalizedString(), objc_msgSend(MEMORY[0x277CCACA8], "stringWithCString:encoding:", _IMAPCommandTable[a4->var0], 1)];
  }

  v10 = v9;
  if ([a3 responseType] - 1 > 5 || (v11 = objc_msgSend(a3, "userString")) == 0 || (v12 = v11, objc_msgSend(v11, "isEqualToString:", &stru_2869E1DA0)))
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    var2 = a4->var2;
    v14 = [var2 countByEnumeratingWithState:&v23 objects:v27 count:16];
    if (v14)
    {
      v15 = v14;
      v16 = *v24;
LABEL_10:
      v17 = 0;
      while (1)
      {
        if (*v24 != v16)
        {
          objc_enumerationMutation(var2);
        }

        v18 = *(*(&v23 + 1) + 8 * v17);
        if ([v18 responseType] - 1 <= 5)
        {
          v19 = [v18 userString];
          if (v19)
          {
            v12 = v19;
            if (![v19 isEqualToString:&stru_2869E1DA0])
            {
              break;
            }
          }
        }

        if (v15 == ++v17)
        {
          v15 = [var2 countByEnumeratingWithState:&v23 objects:v27 count:16];
          if (v15)
          {
            goto LABEL_10;
          }

          goto LABEL_18;
        }
      }
    }

    else
    {
LABEL_18:
      v12 = 0;
    }
  }

  v20 = [MEMORY[0x277D28410] errorWithDomain:*MEMORY[0x277D282F8] code:1030 localizedDescription:v12];
  [v20 useGenericDescription:v10];
  if (![v7 error])
  {
    [v7 setError:v20];
  }

  v21 = *MEMORY[0x277D85DE8];
  return v20;
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

  v4 = [(NSMutableSet *)capabilities allObjects];
  [(MFIMAPConnection *)self mf_unlock];
  return v4;
}

- (BOOL)supportsCapability:(int)a3
{
  [(MFIMAPConnection *)self mf_lock];
  if (!self->_capabilities)
  {
    [(MFIMAPConnection *)self _fetchCapabilities];
  }

  v5 = (1 << a3) & (*(self + 60) | (*(self + 122) << 16));
  if (a3 == 16 && v5)
  {
    v6 = *(self + 248);
    [(MFIMAPConnection *)self mf_unlock];
    if ((v6 & 1) == 0)
    {
      goto LABEL_6;
    }

    return 0;
  }

  [(MFIMAPConnection *)self mf_unlock];
  if (!v5)
  {
    return 0;
  }

  switch(a3)
  {
    case 15:
      v7 = @"DisableESEARCH";
      return [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")] ^ 1;
    case 14:
      v7 = @"DisableCOMPRESS";
      return [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")] ^ 1;
    case 16:
LABEL_6:
      v7 = @"DisableCONDSTORE";
      return [objc_msgSend(MEMORY[0x277CBEBD0] "standardUserDefaults")] ^ 1;
  }

  return 1;
}

- (void)noop
{
  [(MFIMAPConnection *)self mf_lock];
  v3 = *MEMORY[0x277D284B0];
  v4 = [*(&self->super.super.isa + v3) timeout];
  if (v4 < 11)
  {
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
    LODWORD(v6) = 1;
    [(MFIMAPConnection *)self _responseFromSendingCommands:&v6 count:1];
  }

  else
  {
    v5 = v4;
    [*(&self->super.super.isa + v3) setTimeout:10];
    v8 = 0;
    v6 = 0u;
    v7 = 0u;
    LODWORD(v6) = 1;
    [(MFIMAPConnection *)self _responseFromSendingCommands:&v6 count:1];
    [*(&self->super.super.isa + v3) setTimeout:v5];
  }

  [(MFIMAPConnection *)self mf_unlock];
  [(MFIMAPConnection *)self didFinishCommands:&v6 count:1];
}

- (BOOL)authenticateUsingAccount:(id)a3
{
  v5 = [a3 password];
  [(MFIMAPConnection *)self mf_lock];
  if ((*(self + 144) & 6) != 0)
  {
    goto LABEL_3;
  }

  v9.receiver = self;
  v9.super_class = MFIMAPConnection;
  if ([(MFConnection *)&v9 authenticateUsingAccount:a3])
  {
    goto LABEL_3;
  }

  if (!-[MFIMAPConnection isValid](self, "isValid") || [objc_msgSend(MEMORY[0x277D283F8] "currentMonitor")])
  {
LABEL_14:
    v6 = 0;
    goto LABEL_4;
  }

  if ([(MFIMAPConnection *)self loginDisabled])
  {
    v8 = [a3 loginDisabledErrorWithTitle:MFLookupLocalizedString()];
LABEL_13:
    [objc_msgSend(MEMORY[0x277D283F8] "currentMonitor")];
    goto LABEL_14;
  }

  if (!v5)
  {
    v8 = [a3 missingPasswordErrorWithTitle:MFLookupLocalizedString()];
    goto LABEL_13;
  }

  if (![(MFIMAPConnection *)self loginWithAccount:a3 password:v5])
  {
    goto LABEL_14;
  }

LABEL_3:
  [(MFIMAPConnection *)self _sendApplePushForAccountIfSupported:a3];
  [(MFIMAPConnection *)self _sendClientInfoIfSupported];
  [(MFIMAPConnection *)self _enableCompressionIfSupported];
  v6 = 1;
LABEL_4:
  [(MFIMAPConnection *)self mf_unlock];
  return v6;
}

- (id)_serverErrorForAccount:(id)a3 response:(id)a4 command:(id *)a5
{
  v7 = [a3 errorForResponse:a4];
  v8 = [a5->var2 count];
  if (!v7)
  {
    v9 = v8;
    if (v8)
    {
      v10 = 1;
      do
      {
        v11 = [a3 errorForResponse:{objc_msgSend(a5->var2, "objectAtIndex:", v10 - 1)}];
        if (v11)
        {
          v12 = 1;
        }

        else
        {
          v12 = v10 >= v9;
        }

        ++v10;
      }

      while (!v12);
      return v11;
    }
  }

  return v7;
}

- (void)_updateCapabilitiesForAccount:(id)a3 withAuthenticationResponse:(id)a4
{
  [(MFIMAPConnection *)self _clearCapabilities];
  if (a4 && [a4 responseCode] == 14)
  {
    v7 = [a4 responseInfo];
    [(MFIMAPConnection *)self _addCapabilities:v7];
  }

  else
  {
    v7 = [(MFIMAPConnection *)self capabilities];
  }

  [a3 _setCapabilities:v7];
}

- (int)_doIMAPLoginForAccount:(id)a3 quotedUsername:(id)a4 password:(id)a5
{
  v15[2] = *MEMORY[0x277D85DE8];
  v14[0] = 5;
  v15[0] = a4;
  v15[1] = a5;
  v14[1] = [MEMORY[0x277CBEA60] arrayWithObjects:v15 count:2];
  memset(&v14[2], 0, 24);
  v7 = [(MFIMAPConnection *)self _responseFromSendingCommands:v14 count:1];
  v8 = [v7 responseType];
  if (v8 == 2)
  {
    *(self + 144) = *(self + 144) & 0xF8 | 2;
    [(MFIMAPConnection *)self _updateCapabilitiesForAccount:a3 withAuthenticationResponse:v7];
  }

  else
  {
    v9 = [objc_msgSend(MEMORY[0x277D283F8] "currentMonitor")];
    if (v9 || (v9 = -[MFIMAPConnection _serverErrorForAccount:response:command:](self, "_serverErrorForAccount:response:command:", a3, v7, v14)) != 0 || (v10 = [MEMORY[0x277CCACA8] stringWithFormat:MFLookupLocalizedString(), objc_msgSend(a3, "hostname")], (v9 = objc_msgSend(MEMORY[0x277D28410], "errorWithDomain:code:localizedDescription:title:userInfo:", *MEMORY[0x277D282F8], 1032, v10, MFLookupLocalizedString(), 0)) != 0))
    {
      v11 = v9;
      if ((*(self + 144) & 6) != 0)
      {
        *(self + 144) = *(self + 144) & 0xF8 | 1;
      }

      [v9 setMoreInfo:{objc_msgSend(v7, "userString")}];
      [objc_msgSend(MEMORY[0x277D283F8] "currentMonitor")];
    }
  }

  [(MFIMAPConnection *)self didFinishCommands:v14 count:1];
  v12 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)loginWithAccount:(id)a3 password:(id)a4
{
  [(MFIMAPConnection *)self mf_lock];
  if ((*(self + 144) & 6) != 0)
  {
    v7 = 1;
  }

  else
  {
    v8 = _IMAPCreateQuotedString([a3 username]);
    if (a4 && (v9 = _IMAPNeedsLiteralCharacterSet, v16.length = [a4 length], v16.location = 0, CFStringFindCharacterFromSet(a4, v9, v16, 0, 0)))
    {
      v10 = [a4 dataUsingEncoding:4 allowLossyConversion:0];
      v11 = 1;
    }

    else
    {
      v10 = _IMAPCreateQuotedString(a4);
      v11 = 0;
    }

    if ((*(self + 144) & 6) == 0)
    {
      v12 = [(MFIMAPConnection *)self _doIMAPLoginForAccount:a3 quotedUsername:v8 password:v10];
      if ((*(self + 144) & 6) == 0 && v12 == 3)
      {
        v14 = v11;
      }

      else
      {
        v14 = 1;
      }

      if ((v14 & 1) == 0)
      {
        -[MFIMAPConnection _doIMAPLoginForAccount:quotedUsername:password:](self, "_doIMAPLoginForAccount:quotedUsername:password:", a3, v8, [a4 dataUsingEncoding:4 allowLossyConversion:0]);
      }
    }

    v7 = (*(self + 144) & 6) != 0;
  }

  [(MFIMAPConnection *)self mf_unlock];
  return v7;
}

- (BOOL)logout
{
  if ((*(self + 144) & 7) == 0)
  {
    return 1;
  }

  [(MFIMAPConnection *)self mf_lock:2];
  v3 = [(MFIMAPConnection *)self _sendCommands:&v5 count:1 response:0]!= 0;
  [(MFIMAPConnection *)self mf_unlock];
  [(MFIMAPConnection *)self disconnectAndNotifyDelegate:1];
  [(MFIMAPConnection *)self didFinishCommands:&v5 count:1];
  return v3;
}

- (id)separatorChar
{
  [(MFIMAPConnection *)self mf_lock];
  v3 = self->_separatorChar;
  [(MFIMAPConnection *)self mf_unlock];
  if (!v3)
  {
    if (![(MFIMAPConnection *)self _doListCommand:6 withReference:&stru_2869E1DA0 mailboxName:&stru_2869E1DA0 options:0 getSpecialUse:0 statusDataItems:0 statusEntriesByMailbox:0])
    {
      return &stru_2869E1DA0;
    }

    [(MFIMAPConnection *)self mf_lock];
    separatorChar = self->_separatorChar;
    if (!separatorChar)
    {
      separatorChar = [@"/" copyWithZone:0];
      self->_separatorChar = separatorChar;
    }

    v3 = separatorChar;
    [(MFIMAPConnection *)self mf_unlock];
    if (!v3)
    {
      return &stru_2869E1DA0;
    }
  }

  return v3;
}

- (id)serverPathPrefix
{
  if (!self->_serverNamespace && [(MFIMAPConnection *)self supportsCapability:7])
  {
    [(MFIMAPConnection *)self _doNamespaceCommand];
  }

  return self->_serverNamespace;
}

- (id)_doNamespaceCommand
{
  v21 = *MEMORY[0x277D85DE8];
  if ([(MFIMAPConnection *)self supportsCapability:7])
  {
    v19 = 0;
    v17 = 0u;
    v18 = 0u;
    LODWORD(v17) = 30;
    if ([-[MFIMAPConnection _responseFromSendingCommands:count:](self _responseFromSendingCommands:&v17 count:{1), "responseType"}] == 2)
    {
      v15 = 0u;
      v16 = 0u;
      v13 = 0u;
      v14 = 0u;
      v3 = v18;
      v4 = [v18 countByEnumeratingWithState:&v13 objects:v20 count:16];
      if (v4)
      {
        v5 = v4;
        v6 = *v14;
        while (2)
        {
          for (i = 0; i != v5; ++i)
          {
            if (*v14 != v6)
            {
              objc_enumerationMutation(v3);
            }

            v8 = *(*(&v13 + 1) + 8 * i);
            if ([v8 responseType] == 22)
            {
              v9 = [objc_msgSend(v8 "privateNamespaces")];
              if (v9)
              {
                v10 = [v9 objectForKeyedSubscript:0x2869E4E40];
                if ([v10 length])
                {
                  self->_serverNamespace = v10;
                  goto LABEL_16;
                }
              }
            }
          }

          v5 = [v3 countByEnumeratingWithState:&v13 objects:v20 count:16];
          if (v5)
          {
            continue;
          }

          break;
        }
      }
    }

    v10 = 0;
LABEL_16:
    [(MFIMAPConnection *)self didFinishCommands:&v17 count:1];
  }

  else
  {
    v10 = 0;
  }

  v11 = *MEMORY[0x277D85DE8];
  return v10;
}

- (id)_doListCommand:(int)a3 withReference:(id)a4 mailboxName:(id)a5 options:(int)a6 getSpecialUse:(BOOL)a7 statusDataItems:(id)a8 statusEntriesByMailbox:(id *)a9
{
  v9 = a9;
  v72[1] = *MEMORY[0x277D85DE8];
  if (!a5)
  {
    v19 = 0;
    v20 = 0;
    if (!a9)
    {
      goto LABEL_73;
    }

    goto LABEL_72;
  }

  v11 = a7;
  v13 = a5;
  v17 = [MEMORY[0x277CBEB18] arrayWithCapacity:2];
  v68[1] = v17;
  v68[0] = a3;
  v70 = 0;
  v71 = 0;
  v69 = 0;
  [v17 addObject:MFIMAPStringFromMailboxName(a4)];
  v63 = v13;
  if (a6 == 2)
  {
    v18 = @"*";
  }

  else
  {
    if (a6 != 1)
    {
      v24 = v13;
LABEL_14:
      [v17 addObject:MFIMAPStringFromMailboxName(v24)];
      goto LABEL_15;
    }

    v18 = @"%";
  }

  if (![(__CFString *)v13 length])
  {
    v24 = v18;
    goto LABEL_14;
  }

  v21 = [(MFIMAPConnection *)self separatorChar];
  MutableCopy = CFStringCreateMutableCopy(0, [(__CFString *)v21 length]+ [(__CFString *)v13 length]+ [(__CFString *)v18 length], v13);
  v23 = MutableCopy;
  if (v21)
  {
    CFStringAppend(MutableCopy, v21);
  }

  CFStringAppend(v23, v18);
  [v17 addObject:MFIMAPStringFromMailboxName(v23)];

  v13 = v63;
LABEL_15:
  v25 = objc_alloc_init(MEMORY[0x277CBEB18]);
  v26 = v25;
  if (v11)
  {
    [v25 addObject:@"SPECIAL-USE"];
  }

  if ([a8 count] && -[MFIMAPConnection supportsCapability:](self, "supportsCapability:", 22))
  {
    v27 = objc_alloc_init(MEMORY[0x277CBEB38]);
    v28 = objc_alloc(MEMORY[0x277CCACA8]);
    v29 = a8;
    v19 = v27;
    v30 = [v28 initWithFormat:@"STATUS %@", -[MFIMAPConnection parenthesizedStringWithObjects:](self, "parenthesizedStringWithObjects:", v29)];
    [v26 addObject:v30];
  }

  else
  {
    v19 = 0;
  }

  if ([v26 count])
  {
    v31 = [objc_alloc(MEMORY[0x277CCACA8]) initWithFormat:@"RETURN (%@)", objc_msgSend(v26, "componentsJoinedByString:", @" "];
    [v17 addObject:v31];
  }

  if ([-[MFIMAPConnection _responseFromSendingCommands:count:](self _responseFromSendingCommands:v68 count:{1), "responseType"}] == 2)
  {
    v32 = [v69 count];
    v33 = [MEMORY[0x277CBEB18] array];
    v20 = v33;
    if (!v32)
    {
      goto LABEL_71;
    }

    v59 = v33;
    v58 = a6;
    v34 = 0;
    v66 = *MEMORY[0x277D28398];
    v67 = *MEMORY[0x277D283B0];
    v35 = *MEMORY[0x277D283A0];
    v57 = *MEMORY[0x277D283A8];
    v60 = v19;
    v61 = self;
    v36 = v32;
    while (1)
    {
      v37 = [v69 objectAtIndex:v34];
      v38 = [v37 responseType];
      if ((v38 - 15) <= 1)
      {
        break;
      }

      if (v19 && v38 == 13)
      {
        [v19 setObject:objc_msgSend(v37 forKeyedSubscript:{"statusEntries"), objc_msgSend(v37, "mailboxName")}];
LABEL_67:
        [v69 removeObjectAtIndex:v34];
        --v36;
        goto LABEL_68;
      }

      ++v34;
LABEL_68:
      if (v34 >= v36)
      {
        v9 = a9;
        v20 = v59;
        goto LABEL_71;
      }
    }

    v64 = v38;
    v65 = [v37 mailboxAttributes];
    v39 = [v37 mailboxName];
    v40 = [v37 separator];
    if (v40)
    {
      [(MFIMAPConnection *)self mf_lock];
      if (!self->_separatorChar)
      {
        self->_separatorChar = [v40 copyWithZone:0];
      }

      [(MFIMAPConnection *)self mf_unlock];
    }

    if (!v39 || ![v39 length] || -[__CFString length](v13, "length") && !objc_msgSend(v39, "hasPrefix:", v13))
    {
      goto LABEL_67;
    }

    v41 = [(__CFString *)v13 length];
    if ([(NSString *)self->_serverNamespace length])
    {
      v42 = [v39 hasPrefix:self->_serverNamespace] ^ 1;
      if (!v40)
      {
        goto LABEL_45;
      }
    }

    else
    {
      v42 = 0;
      if (!v40)
      {
        goto LABEL_45;
      }
    }

    [v39 rangeOfString:v40 options:8 range:{v41, objc_msgSend(v39, "length") - v41}];
    if (v43)
    {
      v41 += [v40 length];
    }

LABEL_45:
    if (v41)
    {
      v39 = [v39 substringFromIndex:v41];
    }

    v62 = v36;
    if (v40)
    {
      v44 = [v39 componentsSeparatedByString:v40];
      v45 = [v44 count];
      if (!v45)
      {
LABEL_61:
        [v45 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInteger:", v65), @"IMAPMailboxAttributes"}];
        v52 = [objc_msgSend(v45 objectForKey:{v66), "unsignedIntValue"}] & 0xFFFFFFFD | (2 * ((v65 >> 1) & 1));
        if (v42)
        {
          v53 = v52 | 0x80;
        }

        else
        {
          v53 = v52;
        }

        [v45 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInt:", v53), v66}];
        v19 = v60;
        self = v61;
        v36 = v62;
        v13 = v63;
        if (v64 == 15)
        {
          v54 = [v37 extraAttributes];
          if ([v54 count])
          {
            [v45 setObject:v54 forKey:v57];
          }
        }

        goto LABEL_67;
      }

      v46 = [objc_msgSend(v44 "lastObject")];
      v47 = v45 - v46;
      if (v45 == v46)
      {
        v45 = 0;
        goto LABEL_61;
      }
    }

    else
    {
      v72[0] = v39;
      v44 = [MEMORY[0x277CBEA60] arrayWithObjects:v72 count:1];
      v47 = 1;
    }

    v48 = 0;
    v49 = v59;
    do
    {
      v50 = [v44 objectAtIndex:v48];
      v51 = [v49 mf_indexOfMailboxDictionaryWithName:v50];
      if (v51 == 0x7FFFFFFFFFFFFFFFLL || (v45 = [v49 objectAtIndex:v51]) == 0)
      {
        v45 = [MEMORY[0x277CBEB38] dictionary];
        [v45 setObject:v50 forKey:v67];
        if (v48 + 1 < v47)
        {
          [v45 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInt:", 2), @"IMAPMailboxAttributes"}];
          [v45 setObject:objc_msgSend(MEMORY[0x277CCABB0] forKey:{"numberWithUnsignedInt:", 2), v66}];
        }

        [v49 ef_insertObject:v45 usingSortFunction:MEMORY[0x277D28538] context:0 allowDuplicates:1];
      }

      v49 = [v45 objectForKey:v35];
      if (!((v49 != 0) | (v58 != 2) | v65 & 1))
      {
        v49 = [MEMORY[0x277CBEB18] array];
        [v45 setObject:v49 forKey:v35];
      }

      ++v48;
    }

    while (v47 != v48);
    goto LABEL_61;
  }

  v20 = 0;
LABEL_71:
  [(MFIMAPConnection *)self didFinishCommands:v68 count:1];
  if (v9)
  {
LABEL_72:
    *v9 = v19;
  }

LABEL_73:

  v55 = *MEMORY[0x277D85DE8];
  return v20;
}

- (void)close
{
  [(MFIMAPConnection *)self mf_lock:18];
  if ([-[MFIMAPConnection _responseFromSendingCommands:count:](self _responseFromSendingCommands:&v3 count:{1), "responseType"}] == 2)
  {
    *(self + 144) = *(self + 144) & 0xF8 | 2;

    self->_selectedMailbox = 0;
  }

  [(MFIMAPConnection *)self mf_unlock];
  [(MFIMAPConnection *)self didFinishCommands:&v3 count:1];
}

- (BOOL)closeAndLogout
{
  v8 = *MEMORY[0x277D85DE8];
  v7 = 0u;
  DWORD2(v7) = 2;
  [(MFIMAPConnection *)self mf_lock:18];
  v3 = [(MFIMAPConnection *)self _sendCommands:&v6 count:2 response:0]!= 0;
  [(MFIMAPConnection *)self disconnectAndNotifyDelegate:1];
  [(MFIMAPConnection *)self mf_unlock];
  [(MFIMAPConnection *)self didFinishCommands:&v6 count:2];
  v4 = *MEMORY[0x277D85DE8];
  return v3;
}

- (void)unselect
{
  if ([(MFIMAPConnection *)self supportsCapability:9])
  {
    [(MFIMAPConnection *)self mf_lock:25];
    if ([-[MFIMAPConnection _responseFromSendingCommands:count:](self _responseFromSendingCommands:&v3 count:{1), "responseType"}] == 2)
    {
      *(self + 144) = *(self + 144) & 0xF8 | 2;

      self->_selectedMailbox = 0;
    }

    [(MFIMAPConnection *)self mf_unlock];
    [(MFIMAPConnection *)self didFinishCommands:&v3 count:1];
  }

  else
  {

    [(MFIMAPConnection *)self close];
  }
}

- (void)handleStreamEvent:(unint64_t)a3
{
  if (a3 == 2)
  {
    v12 = v4;
    v13 = v3;
    streamEventQueue = self->_streamEventQueue;
    if (!streamEventQueue)
    {
      streamEventQueue = objc_alloc_init(MEMORY[0x277D28420]);
      self->_streamEventQueue = streamEventQueue;
    }

    v11 = [MEMORY[0x277CBEAE8] mf_invocationWithSelector:sel_handleBytesAvailable target:{self, v6, v5, v12, v13, v7}];

    [(MFInvocationQueue *)streamEventQueue addInvocation:v11];
  }
}

- (void)handleBytesAvailable
{
  v12 = *MEMORY[0x277D85DE8];
  [(MFIMAPConnection *)self mf_lock];
  if ([(MFConnection *)self hasBytesAvailable])
  {
    *&v3 = 134218242;
    v9 = v3;
    do
    {
      v4 = [[MFIMAPResponse alloc] initWithConnection:self responseConsumer:0];
      if ([(MFIMAPResponse *)v4 isUntagged]&& (*(&self->_delegateState + 8) & 2) != 0)
      {
        if ([(MFIMAPConnection *)self isIdle])
        {
          v5 = MFLogGeneral();
          if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
          {
            *buf = v9;
            *&buf[4] = self;
            *&buf[12] = 2112;
            *&buf[14] = v4;
            _os_log_impl(&dword_258B7A000, v5, OS_LOG_TYPE_INFO, "#imap-idle connection <%p> received response while idling: %@", buf, 0x16u);
          }
        }

        v11 = 0;
        memset(buf, 0, sizeof(buf));
        *buf = 28;
        v6 = [(MFWeakReferenceHolder *)self->_delegateState.holder retainedReference:v9];
        v7 = v6;
        if (v6 && (*(&self->_delegateState + 8) & 2) != 0)
        {
          [v6 connection:self didReceiveResponse:v4 forCommand:buf];
        }
      }
    }

    while ([(MFConnection *)self hasBytesAvailable]);
  }

  [(MFIMAPConnection *)self mf_unlock];
  v8 = *MEMORY[0x277D85DE8];
}

- (void)locked_startIdle
{
  v23 = *MEMORY[0x277D85DE8];
  v16[0] = MEMORY[0x277D85DD0];
  v16[1] = 3221225472;
  v16[2] = __36__MFIMAPConnection_locked_startIdle__block_invoke;
  v16[3] = &unk_2798B1898;
  v16[4] = self;
  v3 = [MEMORY[0x277D07150] lazyFutureWithBlock:v16];
  if (![(MFIMAPConnection *)self isIdle]&& [(MFIMAPConnection *)self supportsCapability:5])
  {
    v4 = [(MFWeakReferenceHolder *)self->_delegateState.holder retainedReference];
    v5 = v4;
    if (v4 && (*(&self->_delegateState + 8) & 0x800) != 0)
    {
      v11 = [v4 shouldStartIdleForConnection:self];

      if (v11)
      {
        v12 = MFLogGeneral();
        if (os_log_type_enabled(v12, OS_LOG_TYPE_INFO))
        {
          v13 = [(MFIMAPConnection *)self delegate];
          *buf = 134218242;
          *&buf[4] = self;
          *&buf[12] = 2112;
          *&buf[14] = v13;
          _os_log_impl(&dword_258B7A000, v12, OS_LOG_TYPE_INFO, "#imap-idle connection <%p> starting IDLE state for delegate %@", buf, 0x16u);
        }

        v22 = 0;
        memset(buf, 0, sizeof(buf));
        *buf = 28;
        v15 = 0;
        if ([(MFIMAPConnection *)self _sendCommands:buf count:1 response:&v15])
        {
          v15 = [(MFIMAPConnection *)self _copyNextTaggedOrContinuationResponseForCommand:buf];
          if ([v15 responseType] == 1)
          {
            self->_idleCommandSequenceNumber = *&buf[24];
            [v3 result:0];
          }
        }

        [(MFIMAPConnection *)self didFinishCommands:buf count:1];
        if ([(MFIMAPConnection *)self isIdle])
        {
          [(MFIMAPConnection *)self locked_scheduleIdleResetAfterDelay:1740.0];
          goto LABEL_9;
        }

        v6 = MFLogGeneral();
        if (!os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
        {
          goto LABEL_9;
        }

        v14 = [(MFIMAPConnection *)self delegate];
        v17 = 134218242;
        v18 = self;
        v19 = 2112;
        v20 = v14;
        v8 = "#imap-idle connection <%p> failed to enter IDLE state: %@";
        v9 = &v17;
        goto LABEL_8;
      }
    }

    else
    {
    }

    v6 = MFLogGeneral();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [(MFIMAPConnection *)self delegate];
      *buf = 134218242;
      *&buf[4] = self;
      *&buf[12] = 2112;
      *&buf[14] = v7;
      v8 = "#imap-idle connection <%p> delegate rejected starting IDLE state: %@";
      v9 = buf;
LABEL_8:
      _os_log_impl(&dword_258B7A000, v6, OS_LOG_TYPE_INFO, v8, v9, 0x16u);
    }
  }

LABEL_9:
  [v3 result:0];
  v10 = *MEMORY[0x277D85DE8];
}

uint64_t __36__MFIMAPConnection_locked_startIdle__block_invoke(uint64_t a1)
{
  [*(*(a1 + 32) + *MEMORY[0x277D284B0]) setEventHandler:{objc_msgSend(MEMORY[0x277CBEAE8], "mf_invocationWithSelector:target:", sel_handleStreamEvent_)}];
  v1 = MEMORY[0x277CBEB68];

  return [v1 null];
}

- (void)locked_finishIdle
{
  v6[5] = *MEMORY[0x277D85DE8];
  [*(&self->super.super.isa + *MEMORY[0x277D284B0]) setEventHandler:0];
  [(EFCancelable *)[(MFIMAPConnection *)self idleSubscriptionCancelable] cancel];
  if ([(MFIMAPConnection *)self isIdle])
  {
    v3 = MFLogGeneral();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
    {
      LODWORD(v6[0]) = 134218242;
      *(v6 + 4) = self;
      WORD2(v6[1]) = 2112;
      *(&v6[1] + 6) = [(MFIMAPConnection *)self delegate];
      _os_log_impl(&dword_258B7A000, v3, OS_LOG_TYPE_INFO, "#imap-idle connection <%p> leaving IDLE state for delegate: %@", v6, 0x16u);
    }

    memset(v6, 0, 24);
    idleCommandSequenceNumber = self->_idleCommandSequenceNumber;
    LODWORD(v6[0]) = 29;
    v6[3] = idleCommandSequenceNumber;
    v6[4] = 0;
    self->_idleCommandSequenceNumber = 0;
    [(MFIMAPConnection *)self _sendCommands:v6 count:1 response:0];
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)finishIdle
{
  [(MFIMAPConnection *)self mf_lock];
  [(MFIMAPConnection *)self locked_finishIdle];

  [(MFIMAPConnection *)self mf_unlock];
}

- (void)locked_scheduleIdle
{
  if ([(MFIMAPConnection *)self isValid])
  {
    [*(&self->super.super.isa + *MEMORY[0x277D284B0]) setEventHandler:{objc_msgSend(MEMORY[0x277CBEAE8], "mf_invocationWithSelector:target:", sel_handleStreamEvent_, self)}];
    v3 = *(self + 60) | (*(self + 122) << 16);
    if ((*(self + 60) & 0x20) != 0)
    {
      if (self->_selectedMailbox)
      {

        [(MFIMAPConnection *)self locked_scheduleIdleResetAfterDelay:2.0];
      }
    }
  }
}

- (void)scheduleIdleReset
{
  [(MFIMAPConnection *)self mf_lock];
  if ([(MFIMAPConnection *)self isValid])
  {
    v3 = *(self + 60) | (*(self + 122) << 16);
    if ((*(self + 60) & 0x20) != 0)
    {
      if (self->_selectedMailbox)
      {
        [(MFIMAPConnection *)self locked_scheduleIdleResetAfterDelay:2.0];
      }
    }
  }

  [(MFIMAPConnection *)self mf_unlock];
}

- (void)locked_scheduleIdleResetAfterDelay:(double)a3
{
  objc_initWeak(&location, self);
  [(EFCancelable *)[(MFIMAPConnection *)self idleSubscriptionCancelable] cancel];
  v5 = [MEMORY[0x277D071B8] globalAsyncSchedulerWithQualityOfService:17];
  v6[0] = MEMORY[0x277D85DD0];
  v6[1] = 3221225472;
  v6[2] = __55__MFIMAPConnection_locked_scheduleIdleResetAfterDelay___block_invoke;
  v6[3] = &unk_2798B18C0;
  objc_copyWeak(v7, &location);
  v7[1] = *&a3;
  -[MFIMAPConnection setIdleSubscriptionCancelable:](self, "setIdleSubscriptionCancelable:", [v5 afterDelay:v6 performBlock:a3]);
  objc_destroyWeak(v7);
  objc_destroyWeak(&location);
}

uint64_t __55__MFIMAPConnection_locked_scheduleIdleResetAfterDelay___block_invoke(uint64_t a1)
{
  v16 = *MEMORY[0x277D85DE8];
  Weak = objc_loadWeak((a1 + 32));
  v3 = MFLogGeneral();
  if (os_log_type_enabled(v3, OS_LOG_TYPE_INFO))
  {
    v4 = *(a1 + 40);
    v10 = 134218498;
    v11 = Weak;
    v12 = 2048;
    v13 = v4;
    v14 = 2112;
    v15 = [Weak delegate];
    _os_log_impl(&dword_258B7A000, v3, OS_LOG_TYPE_INFO, "#imap-idle connection <%p> timer fired for delayed IDLE reset after %0.2fs delay: %@", &v10, 0x20u);
  }

  [Weak mf_lock];
  v5 = Weak[60] | (*(Weak + 122) << 16);
  if ((Weak[60] & 0x20) != 0)
  {
    v6 = MFLogGeneral();
    if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
    {
      v7 = [Weak delegate];
      v10 = 134218242;
      v11 = Weak;
      v12 = 2112;
      v13 = v7;
      _os_log_impl(&dword_258B7A000, v6, OS_LOG_TYPE_INFO, "#imap-idle connection <%p> resetting IDLE state: %@", &v10, 0x16u);
    }

    [Weak locked_finishIdle];
    [Weak locked_startIdle];
  }

  result = [Weak mf_unlock];
  v9 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)expunge
{
  v7 = 0;
  memset(v6, 0, sizeof(v6));
  LODWORD(v6[0]) = 16;
  v3 = [(MFIMAPConnection *)self _responseFromSendingCommands:v6 count:1];
  if ([v3 responseType] == 4)
  {
    v4 = [(MFIMAPConnection *)self _errorForResponse:v3 commandParams:v6];
    [(MFIMAPConnection *)self didFinishCommands:v6 count:1];
    if (v4)
    {
      [objc_msgSend(MEMORY[0x277D283F8] "currentMonitor")];
    }
  }

  else
  {
    [(MFIMAPConnection *)self didFinishCommands:v6 count:1];
  }

  return 0;
}

- (BOOL)expungeUids:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  if (![(MFIMAPConnection *)self supportsCapability:3])
  {
    v8 = [MEMORY[0x277D28410] errorWithDomain:*MEMORY[0x277D282F8] code:1029 localizedDescription:@"*** Server doesn't support UIDPLUS"];
    v7 = 0;
    if (!v8)
    {
      goto LABEL_9;
    }

LABEL_7:
    [objc_msgSend(MEMORY[0x277D283F8] "currentMonitor")];
    goto LABEL_9;
  }

  if (![a3 count])
  {
    v7 = 1;
    goto LABEL_9;
  }

  v12[0] = [(MFIMAPConnection *)self messageSetForNumbers:a3];
  v11[1] = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
  v11[0] = 17;
  memset(&v11[2], 0, 24);
  v5 = [(MFIMAPConnection *)self _responseFromSendingCommands:v11 count:1];
  v6 = [v5 responseType];
  [(MFIMAPConnection *)self didFinishCommands:v11 count:1];
  v7 = v6 == 2;
  if (!v7 && ![objc_msgSend(MEMORY[0x277D283F8] "currentMonitor")])
  {
    v8 = [(MFIMAPConnection *)self _errorForResponse:v5 commandParams:v11];
    if (v8)
    {
      goto LABEL_7;
    }
  }

LABEL_9:
  v9 = *MEMORY[0x277D85DE8];
  return v7;
}

- (void)fetchStatusForMailboxes:(id)a3 args:(id)a4
{
  v20 = *MEMORY[0x277D85DE8];
  v6 = [(MFIMAPConnection *)self parenthesizedStringWithObjects:a4];
  v7 = [a3 count];
  Mutable = CFArrayCreateMutable(0, 2, MEMORY[0x277CBF128]);
  [(__CFArray *)Mutable addObject:&stru_2869E1DA0];
  if (v6)
  {
    [(__CFArray *)Mutable addObject:v6];
  }

  bzero(v19, 0x4B0uLL);
  if (v7)
  {
    v9 = 0;
    v10 = 0;
    do
    {
      v11 = [a3 objectAtIndex:v9];
      v12 = [(MFIMAPConnection *)self separatorChar];
      if ([(__CFString *)v11 hasPrefix:v12])
      {
        v11 = -[__CFString substringFromIndex:](v11, "substringFromIndex:", [v12 length]);
      }

      [(__CFArray *)Mutable replaceObjectAtIndex:0 withObject:MFIMAPStringFromMailboxName(v11)];
      v13 = &v19[40 * v10];
      *v13 = 8;
      *(v13 + 1) = [(__CFArray *)Mutable copy];
      v14 = v10 + 1;
      ++v9;
      if (v10 == 29 || v9 == v7)
      {
        v15 = [-[MFIMAPConnection _responseFromSendingCommands:count:](self _responseFromSendingCommands:v19 count:{v10 + 1), "responseType"}];
        [(MFIMAPConnection *)self didFinishCommands:v19 count:v10 + 1];
        if (v10 != -1)
        {
          v16 = &v19[40 * v10 + 8];
          do
          {
            --v14;
            v17 = *v16;
            v16 -= 5;
          }

          while (v14);
        }

        if (v15 != 2)
        {
          break;
        }

        bzero(v19, 0x4B0uLL);
        v14 = 0;
      }

      v10 = v14;
    }

    while (v9 != v7);
  }

  v18 = *MEMORY[0x277D85DE8];
}

- (BOOL)selectMailbox:(id)a3 withAccount:(id)a4
{
  v6 = _processSelectCommand(self, 0xDu, a3);
  if (v6)
  {
    [(MFIMAPConnection *)self _updateSearchCapabilityWithAccount:a4];
  }

  return v6;
}

- (BOOL)createMailbox:(id)a3
{
  v8[1] = *MEMORY[0x277D85DE8];
  v8[0] = MFIMAPStringFromMailboxName(a3);
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v8 count:1];
  v5 = [(MFIMAPConnection *)self _sendMailboxCommand:10 withArguments:v4];
  if (v5)
  {
    [(MFIMAPConnection *)self _sendMailboxCommand:14 withArguments:v4];
  }

  v6 = *MEMORY[0x277D85DE8];
  return v5;
}

- (BOOL)deleteMailbox:(id)a3
{
  v7[1] = *MEMORY[0x277D85DE8];
  v7[0] = MFIMAPStringFromMailboxName(a3);
  v4 = [MEMORY[0x277CBEA60] arrayWithObjects:v7 count:1];
  [(MFIMAPConnection *)self _sendMailboxCommand:15 withArguments:v4];
  result = [(MFIMAPConnection *)self _sendMailboxCommand:11 withArguments:v4];
  v6 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)renameMailbox:(id)a3 toMailbox:(id)a4
{
  v13[2] = *MEMORY[0x277D85DE8];
  v6 = MFIMAPStringFromMailboxName(a3);
  v7 = MFIMAPStringFromMailboxName(a4);
  v13[0] = v6;
  v13[1] = v7;
  v8 = -[MFIMAPConnection _sendMailboxCommand:withArguments:](self, "_sendMailboxCommand:withArguments:", 12, [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2]);
  if (v8)
  {
    v12 = v6;
    -[MFIMAPConnection _sendMailboxCommand:withArguments:](self, "_sendMailboxCommand:withArguments:", 15, [MEMORY[0x277CBEA60] arrayWithObjects:&v12 count:1]);
    v11 = v7;
    -[MFIMAPConnection _sendMailboxCommand:withArguments:](self, "_sendMailboxCommand:withArguments:", 14, [MEMORY[0x277CBEA60] arrayWithObjects:&v11 count:1]);
  }

  v9 = *MEMORY[0x277D85DE8];
  return v8;
}

- (BOOL)subscribeMailbox:(id)a3
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = MFIMAPStringFromMailboxName(a3);
  result = -[MFIMAPConnection _sendMailboxCommand:withArguments:](self, "_sendMailboxCommand:withArguments:", 14, [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1]);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)unsubscribeMailbox:(id)a3
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = MFIMAPStringFromMailboxName(a3);
  result = -[MFIMAPConnection _sendMailboxCommand:withArguments:](self, "_sendMailboxCommand:withArguments:", 15, [MEMORY[0x277CBEA60] arrayWithObjects:v6 count:1]);
  v5 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)getQuotaForRootName:(id)a3
{
  v12[1] = *MEMORY[0x277D85DE8];
  if ([(MFIMAPConnection *)self supportsCapability:6])
  {
    v11[0] = 27;
    v12[0] = a3;
    v11[1] = [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:1];
    memset(&v11[2], 0, 24);
    v5 = [-[MFIMAPConnection _responseFromSendingCommands:count:](self _responseFromSendingCommands:v11 count:{1), "responseType"}];
    v6 = v5 == 2;
    if (v5 != 2)
    {
      v7 = [MEMORY[0x277D283F8] currentMonitor];
      [v7 setError:{objc_msgSend(MEMORY[0x277D28410], "errorWithDomain:code:localizedDescription:", *MEMORY[0x277D282F8], 1033, 0)}];
    }

    [(MFIMAPConnection *)self didFinishCommands:v11 count:1];
  }

  else
  {
    v8 = [MEMORY[0x277D283F8] currentMonitor];
    [v8 setError:{objc_msgSend(MEMORY[0x277D28410], "errorWithDomain:code:localizedDescription:", *MEMORY[0x277D282F8], 1034, 0)}];
    v6 = 0;
  }

  v9 = *MEMORY[0x277D85DE8];
  return v6;
}

- (id)quotaPercentagesForMailbox:(id)a3
{
  v45[1] = *MEMORY[0x277D85DE8];
  if ([(MFIMAPConnection *)self supportsCapability:6])
  {
    v39[0] = 26;
    v45[0] = a3;
    v39[1] = [MEMORY[0x277CBEA60] arrayWithObjects:v45 count:1];
    v40 = 0;
    v41 = 0;
    v42 = 0;
    if ([-[MFIMAPConnection _responseFromSendingCommands:count:](self _responseFromSendingCommands:v39 count:{1), "responseType"}] == 2)
    {
      v37 = 0u;
      v38 = 0u;
      v35 = 0u;
      v36 = 0u;
      obj = v40;
      v29 = [v40 countByEnumeratingWithState:&v35 objects:v44 count:16];
      if (v29)
      {
        v5 = 0;
        v28 = *v36;
        do
        {
          v6 = 0;
          do
          {
            if (*v36 != v28)
            {
              objc_enumerationMutation(obj);
            }

            v7 = *(*(&v35 + 1) + 8 * v6);
            v30 = v6;
            if ([v7 responseType] == 19)
            {
              v8 = [v7 quotas];
              v31 = 0u;
              v32 = 0u;
              v33 = 0u;
              v34 = 0u;
              v9 = [v8 countByEnumeratingWithState:&v31 objects:v43 count:16];
              if (v9)
              {
                v10 = v9;
                v11 = *v32;
                do
                {
                  for (i = 0; i != v10; ++i)
                  {
                    if (*v32 != v11)
                    {
                      objc_enumerationMutation(v8);
                    }

                    v13 = *(*(&v31 + 1) + 8 * i);
                    v14 = [v13 objectForKey:0x2869E4DC0];
                    v15 = [v13 objectForKey:0x2869E4DE0];
                    if (v14)
                    {
                      v16 = v15 == 0;
                    }

                    else
                    {
                      v16 = 1;
                    }

                    if (!v16)
                    {
                      v17 = v15;
                      v18 = [v14 unsignedIntValue];
                      v19 = [v17 unsignedIntValue];
                      if (!v5)
                      {
                        v5 = objc_alloc_init(MEMORY[0x277CBEB18]);
                      }

                      v20 = objc_alloc(MEMORY[0x277CCABB0]);
                      *&v21 = v18 / v19;
                      v22 = [v20 initWithFloat:v21];
                      [v5 addObject:v22];
                    }
                  }

                  v10 = [v8 countByEnumeratingWithState:&v31 objects:v43 count:16];
                }

                while (v10);
              }
            }

            v6 = v30 + 1;
          }

          while (v30 + 1 != v29);
          v29 = [obj countByEnumeratingWithState:&v35 objects:v44 count:16];
        }

        while (v29);
        goto LABEL_29;
      }
    }

    else
    {
      v24 = [MEMORY[0x277D283F8] currentMonitor];
      [v24 setError:{objc_msgSend(MEMORY[0x277D28410], "errorWithDomain:code:localizedDescription:", *MEMORY[0x277D282F8], 1033, 0)}];
    }

    v5 = 0;
LABEL_29:
    [(MFIMAPConnection *)self didFinishCommands:v39 count:1];
    goto LABEL_30;
  }

  v23 = [MEMORY[0x277D283F8] currentMonitor];
  [v23 setError:{objc_msgSend(MEMORY[0x277D28410], "errorWithDomain:code:localizedDescription:", *MEMORY[0x277D282F8], 1034, 0)}];
  v5 = 0;
LABEL_30:
  result = v5;
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)_sendMailboxCommand:(int)a3 withArguments:(id)a4
{
  v8[1] = a4;
  v8[0] = a3;
  memset(&v8[2], 0, 24);
  v5 = [(MFIMAPConnection *)self _responseFromSendingCommands:v8 count:1];
  v6 = [v5 responseType];
  if (v6 != 2 && ![objc_msgSend(MEMORY[0x277D283F8] "currentMonitor")])
  {
    [(MFIMAPConnection *)self _errorForResponse:v5 commandParams:v8];
  }

  [(MFIMAPConnection *)self didFinishCommands:v8 count:1];
  return v6 == 2;
}

- (id)copyArgumentForSearchTerm:(id)a3
{
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      v7 = [a3 copy];
    }

    else
    {
      v7 = 0;
    }

    v8 = MFLogGeneral();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_FAULT))
    {
      [MFIMAPConnection copyArgumentForSearchTerm:];
    }

    return v7;
  }

  v4 = _IMAPNeedsLiteralCharacterSet;
  v10.length = [a3 length];
  v10.location = 0;
  if (CFStringFindCharacterFromSet(a3, v4, v10, 0, 0))
  {
    v5 = [a3 dataUsingEncoding:4 allowLossyConversion:0];

    return v5;
  }

  v7 = _IMAPCreateQuotedString(a3);
  if (v7)
  {
    return v7;
  }

  return [a3 copy];
}

- (id)searchUidSet:(id)a3 forTerms:(id)a4 success:(BOOL *)a5
{
  v16 = 0;
  if ([(MFIMAPConnection *)self supportsCapability:15])
  {
    v9 = [-[MFIMAPConnection eSearchIDSet:areMessageSequenceNumbers:forTerms:success:returning:](self eSearchIDSet:a3 areMessageSequenceNumbers:0 forTerms:a4 success:a5 returning:{4), "objectForKey:", @"IMAPESearchAllKey"}];
    if (v9)
    {
      v10 = v9;
      v11 = [MEMORY[0x277CBEB18] array];
      v12 = objc_autoreleasePoolPush();
      v13 = [v10 firstIndex];
      if (v13 != 0x7FFFFFFFFFFFFFFFLL)
      {
        for (i = v13; i != 0x7FFFFFFFFFFFFFFFLL; i = [v10 indexGreaterThanIndex:i])
        {
          [v11 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", i)}];
        }
      }

      objc_autoreleasePoolPop(v12);
    }

    else
    {
      return 0;
    }
  }

  else if (_doUidSearch(self, a3, a4, &v16, a5, 0))
  {
    return v16;
  }

  else
  {
    return 0;
  }

  return v11;
}

- (id)searchIDSet:(id)a3 forTerms:(id)a4 success:(BOOL *)a5
{
  v16 = 0;
  if ([(MFIMAPConnection *)self supportsCapability:15])
  {
    v9 = [-[MFIMAPConnection eSearchIDSet:areMessageSequenceNumbers:forTerms:success:returning:](self eSearchIDSet:a3 areMessageSequenceNumbers:1 forTerms:a4 success:a5 returning:{4), "objectForKey:", @"IMAPESearchAllKey"}];
    if (v9)
    {
      v10 = v9;
      v11 = [MEMORY[0x277CBEB18] array];
      v12 = objc_alloc_init(MEMORY[0x277CCA8B0]);
      v13 = [v10 firstIndex];
      if (v13 != 0x7FFFFFFFFFFFFFFFLL)
      {
        for (i = v13; i != 0x7FFFFFFFFFFFFFFFLL; i = [v10 indexGreaterThanIndex:i])
        {
          [v11 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", i)}];
        }
      }
    }

    else
    {
      return 0;
    }
  }

  else if (_doUidSearch(self, a3, a4, &v16, a5, 1))
  {
    return v16;
  }

  else
  {
    return 0;
  }

  return v11;
}

- (unint64_t)countForSearchOfIDSet:(id)a3 forTerms:(id)a4 success:(BOOL *)a5
{
  if ([(MFIMAPConnection *)self supportsCapability:15])
  {
    v9 = [-[MFIMAPConnection eSearchIDSet:areMessageSequenceNumbers:forTerms:success:returning:](self eSearchIDSet:a3 areMessageSequenceNumbers:1 forTerms:a4 success:a5 returning:{8), "objectForKey:", @"IMAPESearchCountKey"}];
    if (v9)
    {
      return [v9 unsignedIntValue];
    }

    else
    {
      if (a5)
      {
        *a5 = 0;
      }

      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v11 = [(MFIMAPConnection *)self searchIDSet:a3 forTerms:a4 success:a5];

    return [v11 count];
  }
}

- (unint64_t)countForSearchOfUidSet:(id)a3 forTerms:(id)a4 success:(BOOL *)a5
{
  if ([(MFIMAPConnection *)self supportsCapability:15])
  {
    v9 = [-[MFIMAPConnection eSearchIDSet:areMessageSequenceNumbers:forTerms:success:returning:](self eSearchIDSet:a3 areMessageSequenceNumbers:0 forTerms:a4 success:a5 returning:{8), "objectForKey:", @"IMAPESearchCountKey"}];
    if (v9)
    {
      return [v9 unsignedIntValue];
    }

    else
    {
      if (a5)
      {
        *a5 = 0;
      }

      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }

  else
  {
    v11 = [(MFIMAPConnection *)self searchUidSet:a3 forTerms:a4 success:a5];

    return [v11 count];
  }
}

- (void)_updateSearchCapabilityWithAccount:(id)a3
{
  [(MFIMAPConnection *)self mf_lock];
  verifiedESearchResponse = self->_verifiedESearchResponse;
  [(MFIMAPConnection *)self mf_unlock];
  if (!verifiedESearchResponse && [(MFIMAPConnection *)self supportsCapability:15])
  {
    v11[0] = MEMORY[0x277D85DD0];
    v11[1] = 3221225472;
    v11[2] = __55__MFIMAPConnection__updateSearchCapabilityWithAccount___block_invoke;
    v11[3] = &unk_2798B18E8;
    v11[4] = self;
    v6 = [a3 verifyESearchSupportWithBlock:v11];
    [(MFIMAPConnection *)self mf_lock];
    if ((v6 & 1) == 0)
    {
      v7 = MFLogGeneral();
      if (os_log_type_enabled(v7, OS_LOG_TYPE_INFO))
      {
        *v10 = 0;
        _os_log_impl(&dword_258B7A000, v7, OS_LOG_TYPE_INFO, "inconsistent esearch counts detected, ignoring esearch capability", v10, 2u);
      }

      v8 = *(self + 60);
      v9 = v8 & 0xFFFF7FFF | (*(self + 122) << 16);
      *(self + 60) = v8 & 0x7FFF;
      *(self + 122) = BYTE2(v9);
    }

    self->_verifiedESearchResponse = 1;
    [(MFIMAPConnection *)self mf_unlock];
  }
}

- (id)searchUidSet:(id)a3 forNewMessageIDs:(id)a4
{
  v48 = *MEMORY[0x277D85DE8];
  capacity = [a4 count];
  v31 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:capacity];
  v42 = 0u;
  v43 = 0u;
  v44 = 0u;
  v45 = 0u;
  obj = a4;
  v32 = [a4 countByEnumeratingWithState:&v42 objects:v47 count:16];
  if (!v32)
  {
    goto LABEL_39;
  }

  Mutable = 0;
  v28 = *v43;
  v29 = self;
  v30 = a3;
  do
  {
    v8 = 0;
    do
    {
      if (*v43 != v28)
      {
        objc_enumerationMutation(obj);
      }

      v9 = [(MFIMAPConnection *)self copyArgumentForSearchTerm:*(*(&v42 + 1) + 8 * v8)];
      v10 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:4];
      v11 = v10;
      v38[1] = v10;
      v38[0] = 24;
      v40 = 0;
      v41 = 0;
      v39 = 0;
      if (a3)
      {
        [v10 addObject:@"UID"];
        [v11 addObject:a3];
      }

      [v11 addObject:@"HEADER"];
      [v11 addObject:@"MESSAGE-ID"];
      [v11 addObject:v9];

      [(MFIMAPConnection *)self _responseFromSendingCommands:v38 count:1];
      v12 = [v39 count];
      if (v12)
      {
        v13 = v12;
        v14 = 0;
        v15 = 0;
        do
        {
          v16 = [v39 objectAtIndex:v15];
          if ([v16 responseType] == 14)
          {
            v17 = [v16 searchResults];
            v34 = 0u;
            v35 = 0u;
            v36 = 0u;
            v37 = 0u;
            v18 = [v17 countByEnumeratingWithState:&v34 objects:v46 count:16];
            if (v18)
            {
              v19 = v18;
              v20 = *v35;
              do
              {
                for (i = 0; i != v19; ++i)
                {
                  if (*v35 != v20)
                  {
                    objc_enumerationMutation(v17);
                  }

                  v22 = [*(*(&v34 + 1) + 8 * i) unsignedIntValue];
                  if (v22 > v14)
                  {
                    v23 = v22;
                    if (!Mutable || !CFSetContainsValue(Mutable, v22))
                    {
                      v14 = v23;
                    }
                  }
                }

                v19 = [v17 countByEnumeratingWithState:&v34 objects:v46 count:16];
              }

              while (v19);
            }

            [v39 removeObjectAtIndex:v15];
            --v13;
          }

          else
          {
            ++v15;
          }
        }

        while (v15 < v13);
        if (Mutable)
        {
LABEL_34:
          self = v29;
          a3 = v30;
          if (!v14)
          {
            goto LABEL_31;
          }

LABEL_29:
          if (Mutable)
          {
            CFSetAddValue(Mutable, v14);
          }

          goto LABEL_31;
        }
      }

      else
      {
        v14 = 0;
        if (Mutable)
        {
          goto LABEL_34;
        }
      }

      self = v29;
      a3 = v30;
      if (capacity >= 2)
      {
        Mutable = CFSetCreateMutable(0, capacity, 0);
      }

      if (v14)
      {
        goto LABEL_29;
      }

LABEL_31:
      [v31 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInt:", v14)}];
      [(MFIMAPConnection *)self didFinishCommands:v38 count:1];
      ++v8;
    }

    while (v8 != v32);
    v24 = [obj countByEnumeratingWithState:&v42 objects:v47 count:16];
    v32 = v24;
  }

  while (v24);
  if (Mutable)
  {
    CFRelease(Mutable);
  }

LABEL_39:
  result = v31;
  v26 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)deleteMessagesOlderThanNumberOfDays:(int)a3
{
  v19[3] = *MEMORY[0x277D85DE8];
  if (a3 <= 0)
  {
    v19[0] = [(MFIMAPConnection *)self messageSetForRange:0xFFFFFFFF00000001];
    v19[1] = @"+FLAGS.SILENT";
    v19[2] = @"(\\Deleted)";
    v17[1] = [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:3];
    v17[0] = 22;
    memset(&v17[2], 0, 24);
    [(MFIMAPConnection *)self _responseFromSendingCommands:v17 count:1];
    [(MFIMAPConnection *)self didFinishCommands:v17 count:1];
  }

  else
  {
    v5 = [MEMORY[0x277CBEA80] calendarWithIdentifier:*MEMORY[0x277CBE5C0]];
    v18[0] = @"BEFORE";
    v18[1] = MFIMAPDateSearchStringForDate([v5 dateByAddingUnit:16 value:1 - a3 toDate:objc_msgSend(MEMORY[0x277CBEAA8] options:{"date"), 0}]);
    v6 = -[MFIMAPConnection searchUidSet:forTerms:success:](self, "searchUidSet:forTerms:success:", 0, [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:2], 0);
    v7 = [v6 count];
    if (v7)
    {
      v8 = v7;
      v9 = MFCreateArrayForMessageFlags(2, 1);
      if (v8 > 0x64)
      {
        Mutable = CFArrayCreateMutable(0, 100, 0);
        v11 = 0;
        v12 = 100;
        do
        {
          if (v8 - v11 >= 0x64)
          {
            v13 = 100;
          }

          else
          {
            v13 = v8 - v11;
          }

          CFArrayRemoveAllValues(Mutable);
          v20.location = v11;
          v20.length = v13;
          CFArrayAppendArray(Mutable, v6, v20);
          [(MFIMAPConnection *)self storeFlags:v9 state:1 forUids:Mutable];
          v11 = v12;
          v14 = v8 > v12;
          v12 += 100;
        }

        while (v14);
      }

      else
      {
        [(MFIMAPConnection *)self storeFlags:v9 state:1 forUids:v6];
      }
    }
  }

  v15 = *MEMORY[0x277D85DE8];
  return 1;
}

- (id)_responseFromSendingCommand:(id *)a3 andPossiblyCreateMailbox:(id)a4
{
  v7 = [(MFIMAPConnection *)self _responseFromSendingCommands:a3 count:1];
  if ([v7 responseType] == 4)
  {
    v8 = [v7 responseCode] == 8;
    if (v7)
    {
LABEL_12:
      if (!v8)
      {
        return v7;
      }

      goto LABEL_16;
    }
  }

  else
  {
    v8 = 0;
    if (v7)
    {
      goto LABEL_12;
    }
  }

  if (v8)
  {
    goto LABEL_12;
  }

  v9 = [a3->var2 count];
  if (!v9)
  {
    return 0;
  }

  v10 = v9;
  v11 = 0;
  while (1)
  {
    v12 = [a3->var2 objectAtIndex:v11];
    if ([v12 responseType] == 4 && objc_msgSend(v12, "responseCode") == 8)
    {
      break;
    }

    if (++v11 >= v10)
    {
      return v7;
    }
  }

  [a3->var2 removeObjectAtIndex:v11];
LABEL_16:
  [(MFIMAPConnection *)self didFinishCommands:a3 count:1];
  if (![(MFIMAPConnection *)self createMailbox:a4])
  {
    return v7;
  }

  return [(MFIMAPConnection *)self _responseFromSendingCommands:a3 count:1];
}

- (BOOL)copyUids:(id)a3 toMailboxNamed:(id)a4 newMessageInfo:(id *)a5
{
  v13[2] = *MEMORY[0x277D85DE8];
  if (!a3)
  {
    [MFIMAPConnection copyUids:a2 toMailboxNamed:self newMessageInfo:?];
  }

  v13[0] = [(MFIMAPConnection *)self messageSetForNumbers:a3];
  v13[1] = MFIMAPStringFromMailboxName(a4);
  v12[1] = [MEMORY[0x277CBEA60] arrayWithObjects:v13 count:2];
  v12[0] = 23;
  memset(&v12[2], 0, 24);
  v9 = [(MFIMAPConnection *)self _responseFromSendingCommand:v12 andPossiblyCreateMailbox:a4];
  [(MFIMAPConnection *)self didFinishCommands:v12 count:1];
  if (a5)
  {
    *a5 = MFUIDPlusInfoFromResponse(v9);
  }

  result = [v9 responseType] == 2;
  v11 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)appendData:(id)a3 toMailboxNamed:(id)a4 flags:(id)a5 dateReceived:(id)a6 newMessageInfo:(id *)a7
{
  v13 = [MEMORY[0x277CBEB18] arrayWithCapacity:3];
  v20[1] = v13;
  v20[0] = 19;
  memset(&v20[2], 0, 24);
  if (a7)
  {
    *a7 = 0;
  }

  [v13 addObject:MFIMAPStringFromMailboxName(a4)];
  if (a5)
  {
    [v13 addObject:{-[MFIMAPConnection parenthesizedStringWithObjects:](self, "parenthesizedStringWithObjects:", a5)}];
  }

  if (_MFIMAPDateStringForDate_onceToken != -1)
  {
    [MFIMAPConnection appendData:toMailboxNamed:flags:dateReceived:newMessageInfo:];
  }

  v14 = [_MFIMAPDateStringForDate_formatter stringFromDate:a6];
  if (v14)
  {
    [v13 addObject:v14];
  }

  [v13 addObject:a3];
  v15 = [(MFIMAPConnection *)self _responseFromSendingCommand:v20 andPossiblyCreateMailbox:a4];
  v16 = v15;
  if (a7 && [v15 responseType] == 2 && objc_msgSend(v16, "responseCode") == 15)
  {
    v17 = [v16 responseInfo];
    Mutable = CFDictionaryCreateMutable(0, 2, MEMORY[0x277CBF138], MEMORY[0x277CBF150]);
    CFDictionarySetValue(Mutable, @"UIDVALIDITY", [v17 objectAtIndex:0]);
    CFDictionarySetValue(Mutable, @"Source UIDS", [v17 objectAtIndex:1]);
    *a7 = Mutable;
  }

  return [v16 responseType] == 2;
}

- (NSArray)additionalHeadersForFetch
{
  +[MFIMAPConnection mf_lock];
  v3 = [(NSArray *)self->_additionalHeadersForFetch copy];
  +[MFIMAPConnection mf_unlock];

  return v3;
}

- (void)setAdditionalHeadersForFetch:(id)a3
{
  +[MFIMAPConnection mf_lock];
  if (([a3 isEqual:self->_additionalHeadersForFetch] & 1) == 0)
  {

    self->_additionalHeadersForFetch = [a3 copy];
  }

  +[MFIMAPConnection mf_unlock];
}

- (void)fetchTotalSize:(unint64_t *)a3 andMessageCount:(unsigned int *)a4
{
  v12[2] = *MEMORY[0x277D85DE8];
  v7 = [objc_allocWithZone(MEMORY[0x277CBEB18]) init];
  v12[0] = [(MFIMAPConnection *)self messageSetForRange:0xFFFFFFFF00000001];
  v12[1] = @"RFC822.SIZE";
  -[MFIMAPConnection _doUidFetchWithRange:arguments:validateMessage:responses:](self, "_doUidFetchWithRange:arguments:validateMessage:responses:", 0xFFFFFFFF00000001, [MEMORY[0x277CBEA60] arrayWithObjects:v12 count:2], 0, v7);
  if (a4)
  {
    *a4 = 0;
  }

  if (a3)
  {
    *a3 = 0;
  }

  v8 = [v7 count];
  if (v8)
  {
    v9 = v8 - 1;
    do
    {
      v10 = [objc_msgSend(objc_msgSend(v7 objectAtIndex:{v9), "fetchResultWithType:", 3), "messageSize"}];
      if (v10)
      {
        if (a3)
        {
          *a3 += v10;
        }

        if (a4)
        {
          ++*a4;
        }
      }

      --v9;
    }

    while (v9 != -1);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (id)fetchHeadersForUid:(unsigned int)a3
{
  v19[2] = *MEMORY[0x277D85DE8];
  v5 = [objc_allocWithZone(MEMORY[0x277CBEB18]) initWithCapacity:1];
  v19[0] = EFStringWithInt();
  v19[1] = @"BODY.PEEK[HEADER]";
  -[MFIMAPConnection _doUidFetchWithRange:arguments:validateMessage:responses:](self, "_doUidFetchWithRange:arguments:validateMessage:responses:", a3 | (a3 << 32), [MEMORY[0x277CBEA60] arrayWithObjects:v19 count:2], 0, v5);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
LABEL_3:
    v9 = 0;
    while (1)
    {
      if (*v15 != v8)
      {
        objc_enumerationMutation(v5);
      }

      v10 = *(*(&v14 + 1) + 8 * v9);
      if ([objc_msgSend(v10 fetchResultWithType:{8), "uid"}] == a3)
      {
        v11 = [objc_msgSend(objc_msgSend(v10 fetchResultWithType:{4), "fetchData"), "mutableCopy"}];
        [v11 mf_convertNetworkLineEndingsToUnix];
        if (v11)
        {
          break;
        }
      }

      if (v7 == ++v9)
      {
        v7 = [v5 countByEnumeratingWithState:&v14 objects:v18 count:16];
        if (v7)
        {
          goto LABEL_3;
        }

        goto LABEL_10;
      }
    }
  }

  else
  {
LABEL_10:
    v11 = 0;
  }

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (id)fetchMessageIdsForUids:(id)a3
{
  v32[2] = *MEMORY[0x277D85DE8];
  v5 = [objc_alloc(MEMORY[0x277CBEB38]) initWithCapacity:{objc_msgSend(a3, "count")}];
  v32[0] = -[MFIMAPConnection messageSetForNumbers:](self, "messageSetForNumbers:", [a3 allObjects]);
  v32[1] = @"(BODY.PEEK[HEADER.FIELDS (MESSAGE-ID)])";
  v27[1] = [MEMORY[0x277CBEA60] arrayWithObjects:v32 count:2];
  v27[0] = 21;
  v29 = 0;
  v30 = 0;
  v28 = 0;
  v22 = self;
  if ([-[MFIMAPConnection _responseFromSendingCommands:count:](self _responseFromSendingCommands:v27 count:{1), "responseType"}] == 2)
  {
    v6 = v28;
    v23 = 0u;
    v24 = 0u;
    v25 = 0u;
    v26 = 0u;
    v7 = [v28 countByEnumeratingWithState:&v23 objects:v31 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v24;
      v10 = *MEMORY[0x277D06FE0];
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v24 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v12 = *(*(&v23 + 1) + 8 * i);
          if ([v12 responseType] == 17)
          {
            v13 = [v12 fetchResultWithType:4];
            v14 = [v12 fetchResultWithType:8];
            v15 = [v13 fetchData];
            if (v15)
            {
              v16 = [objc_alloc(MEMORY[0x277D24F70]) initWithData:v15];
              [v16 mf_convertNetworkLineEndingsToUnix];
              v17 = v16;
              v18 = [objc_alloc(MEMORY[0x277D24F80]) initWithHeaderData:v17 encoding:0xFFFFFFFFLL];
              v19 = [v18 copyFirstStringValueForKey:v10];
              [v5 setObject:v19 forKeyedSubscript:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInt:", objc_msgSend(v14, "uid"))}];
            }
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v23 objects:v31 count:16];
      }

      while (v8);
    }
  }

  [(MFIMAPConnection *)v22 didFinishCommands:v27 count:1];
  result = v5;
  v21 = *MEMORY[0x277D85DE8];
  return result;
}

- (id)fetchUniqueRemoteIDsForUids:(id)a3
{
  v24[2] = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v24[0] = -[MFIMAPConnection messageSetForNumbers:](self, "messageSetForNumbers:", [a3 allObjects]);
  v24[1] = @"(UID X-GM-MSGID)";
  v19[1] = [MEMORY[0x277CBEA60] arrayWithObjects:v24 count:2];
  v19[0] = 21;
  v21 = 0;
  v22 = 0;
  v20 = 0;
  if ([-[MFIMAPConnection _responseFromSendingCommands:count:](self _responseFromSendingCommands:v19 count:{1), "responseType"}] == 2)
  {
    v6 = v20;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    v7 = [v20 countByEnumeratingWithState:&v15 objects:v23 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v16;
      do
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v16 != v9)
          {
            objc_enumerationMutation(v6);
          }

          v11 = *(*(&v15 + 1) + 8 * i);
          if ([v11 responseType] == 17)
          {
            v12 = [objc_msgSend(v11 fetchResultWithType:{9), "uniqueRemoteId"}];
            [v5 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedLongLong:", v12)}];
          }
        }

        v8 = [v6 countByEnumeratingWithState:&v15 objects:v23 count:16];
      }

      while (v8);
    }
  }

  [(MFIMAPConnection *)self didFinishCommands:v19 count:1];
  result = v5;
  v14 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)performCustomCommand:(id)a3 withArguments:(id)a4
{
  if ([a4 count])
  {
    v7 = [a4 mutableCopy];
    [v7 insertObject:a3 atIndex:0];
  }

  else
  {
    v7 = [objc_alloc(MEMORY[0x277CBEA60]) initWithObjects:{a3, 0}];
  }

  v15[1] = v7;
  v15[0] = 38;
  memset(&v15[2], 0, 24);
  v8 = [(MFIMAPConnection *)self _responseFromSendingCommands:v15 count:1];
  v9 = [v8 responseType];
  if (v9 != 2)
  {
    v10 = [MEMORY[0x277D283F8] currentMonitor];
    if (![v10 error])
    {
      if ([v8 responseType] - 1 <= 5 && (v11 = objc_msgSend(v8, "userString")) != 0)
      {
        v12 = v11;
        if ([v11 isEqualToString:&stru_2869E1DA0])
        {
          v13 = 0;
        }

        else
        {
          v13 = v12;
        }
      }

      else
      {
        v13 = 0;
      }

      [v10 setError:{objc_msgSend(MEMORY[0x277D28410], "errorWithDomain:code:localizedDescription:", *MEMORY[0x277D282F8], 1033, v13)}];
    }
  }

  [(MFIMAPConnection *)self didFinishCommands:v15 count:1];

  return v9 == 2;
}

- (void)setReadBufferSizeFromElapsedTime:(double)a3 bytesRead:(unint64_t)a4
{
  if (a3 > 0.0 && a4 >= 0x401)
  {
    v5 = a3 - *&_kIMAPFetchTargetTime;
    if (a3 - *&_kIMAPFetchTargetTime < 0.0)
    {
      v5 = -(a3 - *&_kIMAPFetchTargetTime);
    }

    if (v5 > *&_kIMAPFetchTargetTime * 0.5)
    {
      v7 = [(MFIMAPConnection *)self readBufferSize];
      v8 = *&_kIMAPFetchTargetTime;
      if (*&_kIMAPFetchTargetTime <= a3)
      {
        if (v7 >> 1 <= _kIMAPMinFetchChunkSize)
        {
          v9 = _kIMAPMinFetchChunkSize;
        }

        else
        {
          v9 = v7 >> 1;
        }
      }

      else if (2 * v7 >= _kIMAPMaxFetchChunkSize)
      {
        v9 = _kIMAPMaxFetchChunkSize;
      }

      else
      {
        v9 = 2 * v7;
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
  v2 = [MEMORY[0x277CBEBD0] standardUserDefaults];
  v3 = [v2 integerForKey:@"MinFetchChunkSize"];
  if (v3)
  {
    _kIMAPMinFetchChunkSize = v3;
  }

  v4 = [v2 integerForKey:@"MaxFetchChunkSize"];
  if (v4)
  {
    _kIMAPMaxFetchChunkSize = v4;
  }

  [v2 floatForKey:@"FetchDeltaTarget"];
  if (v5 != 0.0)
  {
    *&_kIMAPFetchTargetTime = v5;
  }
}

- (BOOL)_doUidFetchWithRange:(id)a3 arguments:(id)a4 validateMessage:(BOOL)a5 responses:(id)a6
{
  v6 = a5;
  v22[0] = 21;
  v22[1] = a4;
  v23 = 0;
  v24 = 0;
  v25 = 0;
  v9 = [-[MFIMAPConnection _responseFromSendingCommands:count:](self _responseFromSendingCommands:v22 count:{1), "responseType"}];
  if (v9 == 2)
  {
    v10 = [v23 count];
    if (v10)
    {
      v11 = v10;
      v12 = 0;
      v13 = 0;
      v14 = 0;
      do
      {
        v15 = [v23 objectAtIndex:v14];
        if ([v15 responseType] != 17 || ((v16 = objc_msgSend(objc_msgSend(v15, "fetchResultWithType:", 8), "uid")) != 0 ? (v17 = v16 >= a3.var0) : (v17 = 0), v17 ? (v18 = v16 > a3.var1) : (v18 = 1), v18))
        {
          ++v14;
        }

        else
        {
          v19 = v16 <= v13;
          if (v16 > v13)
          {
            v13 = v16;
          }

          if (!v6 || [(MFIMAPConnection *)self _isFetchResponseValid:v15])
          {
            [a6 addObject:v15];
          }

          v12 |= v19;
          [v23 removeObjectAtIndex:v14];
          --v11;
        }
      }

      while (v14 < v11);
      v9 = 2;
      if (v12)
      {
        [a6 sortUsingFunction:_compareFetchResultsByUid context:0];
      }
    }
  }

  [(MFIMAPConnection *)self didFinishCommands:v22 count:1];
  return v9 == 2;
}

- (id)messageSetForRange:(id)a3
{
  if (a3.var1 >= 2)
  {
    if (a3.var1 == -1)
    {
      return [MEMORY[0x277CCACA8] stringWithFormat:@"%d:*", a3, v4];
    }

    else
    {
      return [MEMORY[0x277CCACA8] stringWithFormat:@"%d:%d", a3, a3.var1];
    }
  }

  else
  {

    return EFStringWithInt();
  }
}

- (id)messageSetForRange:(id)a3 butNotNumbers:(id)a4
{
  var1 = a3.var1;
  v7 = [a4 firstIndex];
  v8 = objc_alloc_init(MEMORY[0x277CCAB68]);
  var0 = a3.var0;
  if (v7 > HIDWORD(*&a3))
  {
    if (a3.var0 > var1)
    {
      goto LABEL_23;
    }

    goto LABEL_18;
  }

  v10 = 0;
  do
  {
    if (v7 == var0)
    {
      ++var0;
    }

    else if (v7 > var0)
    {
      if (v10 >= 1)
      {
        [v8 appendString:{@", "}];
      }

      if (v7 - var0 == 1)
      {
        [v8 appendFormat:@"%lu", var0, v12];
      }

      else
      {
        [v8 appendFormat:@"%lu:%lu", var0, v7 - 1];
      }

      ++v10;
      var0 = v7 + 1;
    }

    v7 = [a4 indexGreaterThanIndex:v7];
  }

  while (v7 <= var1);
  if (var0 <= var1)
  {
    if (v10 >= 1)
    {
      [v8 appendString:{@", "}];
    }

LABEL_18:
    if (var1 == var0)
    {
      [v8 appendFormat:@"%u", var1, v12];
    }

    else if (var1 == 0xFFFFFFFF)
    {
      [v8 appendFormat:@"%lu:*", var0, v12];
    }

    else
    {
      [v8 appendFormat:@"%lu:%u", var0, var1];
    }
  }

LABEL_23:

  return v8;
}

- (id)messageSetForNumbers:(id)a3 range:(_NSRange)a4 maxTokens:(unint64_t)a5 indexOfLastNumber:(unint64_t *)a6
{
  location = a4.location;
  if (a4.length != 1)
  {
    if (!a4.length)
    {
      v8 = 0;
      if (a6)
      {
        *a6 = 0;
      }

      return v8;
    }

    v12 = a4.location + a4.length;
    v13 = [a3 objectAtIndex:a4.location];
    v14 = [v13 integerValue];
    v8 = [MEMORY[0x277CCAB68] stringWithString:{objc_msgSend(v13, "description")}];
    v15 = location + 1;
    v27 = v12;
    v24 = a6;
    if (v15 >= v12 || (v26 = a5 - 1, a5 == 1))
    {
LABEL_30:
      if (v24)
      {
        *v24 = v15;
      }

      return v8;
    }

    v16 = 0;
    v17 = 0;
    v18 = 0;
    v25 = a5 - 2;
    while (1)
    {
      v19 = [a3 objectAtIndex:{v15, v24}];
      v20 = [v19 integerValue];
      v21 = v14 + 1;
      v22 = v20 != v14 + 1 || v15 >= v27 - 1;
      v23 = !v22;
      if (!v22)
      {
        goto LABEL_28;
      }

      if (v17)
      {
        [v8 appendString:@":"];
        if (v20 != v21)
        {
          [v8 appendString:{objc_msgSend(v13, "description")}];
          if (v25 > v16)
          {
            [v8 appendString:{@", "}];
            [v8 appendString:{objc_msgSend(v19, "description")}];
            ++v18;
          }

          goto LABEL_27;
        }
      }

      else
      {
        [v8 appendString:{@", "}];
      }

      [v8 appendString:{objc_msgSend(v19, "description")}];
LABEL_27:
      ++v18;
LABEL_28:
      if (++v15 < v27)
      {
        v16 = v18;
        v17 = v23;
        v14 = v20;
        v13 = v19;
        if (v26 > v18)
        {
          continue;
        }
      }

      goto LABEL_30;
    }
  }

  if (a6)
  {
    *a6 = 1;
  }

  v9 = [a3 objectAtIndex:a4.location];

  return [v9 description];
}

- (id)messageSetForNumbers:(id)a3
{
  v5 = [a3 count];

  return [(MFIMAPConnection *)self messageSetForNumbers:a3 range:0, v5];
}

- (id)parenthesizedStringWithObjects:(id)a3
{
  v5 = [a3 count];
  v6 = objc_msgSend(MEMORY[0x277CCAB68], "stringWithString:", @"(");
  if (v5)
  {
    for (i = 0; i != v5; ++i)
    {
      v8 = [a3 objectAtIndex:i];
      if (i)
      {
        [v6 appendString:@" "];
      }

      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v9 = [(MFIMAPConnection *)self parenthesizedStringWithObjects:v8];
        }

        else
        {
          v9 = [v8 description];
        }

        v8 = v9;
      }

      [v6 appendString:v8];
    }
  }

  [v6 appendString:@""]);
  return v6;
}

- (BOOL)authenticateUsingAccount:(id)a3 authenticator:(id)a4
{
  v30 = *MEMORY[0x277D85DE8];
  v7 = [MEMORY[0x277CBEB18] arrayWithObject:{objc_msgSend(objc_msgSend(a4, "authScheme"), "name")}];
  if (-[MFIMAPConnection supportsCapability:](self, "supportsCapability:", 17) && [a4 supportsInitialClientResponse])
  {
    v8 = [objc_msgSend(a4 responseForServerData:{0), "mf_encodeBase64WithoutLineBreaks"}];
    if (v8)
    {
      v9 = [objc_alloc(MEMORY[0x277CCACA8]) initWithData:v8 encoding:1];
      [v7 addObject:v9];
    }

    else
    {
      v10 = MFLogGeneral();
      if (os_log_type_enabled(v10, OS_LOG_TYPE_DEFAULT))
      {
        buf = 138412290;
        *buf_4 = a4;
        _os_log_impl(&dword_258B7A000, v10, OS_LOG_TYPE_DEFAULT, "#Warning %@ claimed to support initial response data, and didn't supply an initial response", &buf, 0xCu);
      }
    }
  }

  *buf_4 = 0;
  *&buf_4[4] = v7;
  buf = 4;
  v28 = 0;
  v29 = 0;
  v27 = 0;
  [(MFIMAPConnection *)self mf_lock];
  v22 = 0;
  if ([(MFIMAPConnection *)self _sendCommands:&buf count:1 response:&v22])
  {
    [a4 setAuthenticationState:1];
    if ([a4 authenticationState] != 3)
    {
      while (1)
      {
        v11 = [(MFIMAPConnection *)self _copyNextTaggedOrContinuationResponseForCommand:&buf];
        v22 = v11;
        if (!v11)
        {
          [a4 setAuthenticationState:3];
          goto LABEL_40;
        }

        v12 = [v11 responseType];
        if (v12 != 1)
        {
          break;
        }

        v13 = [a4 responseForServerData:{objc_msgSend(v22, "userData")}];
        if (v13)
        {
          v14 = v13;
          if ([a4 base64EncodeResponseData])
          {
            v14 = [v14 mf_encodeBase64WithoutLineBreaks];
          }

          [(NSMutableData *)self->_data setData:v14];
        }

        else
        {
          [(NSMutableData *)self->_data setLength:0];
        }

        [(NSMutableData *)self->_data appendBytes:&_IMAPLineEnding length:2];
        if ([a4 justSentPlainTextPassword])
        {
          if (![(MFConnection *)self writeData:self->_data dontLogBytesInRange:0, [(NSMutableData *)self->_data length]- 2])
          {
            goto LABEL_37;
          }
        }

        else if (![(MFConnection *)self writeData:self->_data])
        {
LABEL_37:
          if ([a4 authenticationState] != 1)
          {
            goto LABEL_39;
          }

          goto LABEL_38;
        }

        if ([a4 authenticationState] == 3)
        {
          goto LABEL_40;
        }
      }

      if (v12 != 2)
      {
        if (v12 == 3)
        {
          v17 = MFLogGeneral();
          if (os_log_type_enabled(v17, OS_LOG_TYPE_ERROR))
          {
            [MFIMAPConnection authenticateUsingAccount:? authenticator:?];
          }
        }

        else
        {
          if (v12 == 4)
          {
            v15 = MFLogGeneral();
            if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
            {
              [MFIMAPConnection authenticateUsingAccount:? authenticator:?];
            }

            [a4 setAuthenticationState:2];
            if ([v22 responseCode] == 18)
            {
              [a4 setMissingPasswordError];
            }

            else
            {
              v21 = [(MFIMAPConnection *)self _serverErrorForAccount:a3 response:v22 command:&buf];
              if (v21)
              {
                [objc_msgSend(MEMORY[0x277D283F8] "currentMonitor")];
              }
            }

LABEL_39:

            goto LABEL_40;
          }

          v18 = MFLogGeneral();
          if (os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
          {
            *v23 = 138412290;
            v24 = v22;
            _os_log_impl(&dword_258B7A000, v18, OS_LOG_TYPE_INFO, "*** Unexpected response during authentication: %@", v23, 0xCu);
          }
        }

LABEL_38:
        [a4 setAuthenticationState:3];
        goto LABEL_39;
      }

      [a4 setAuthenticationState:4];
      *(self + 144) = *(self + 144) & 0xF8 | 2;
      v16 = *MEMORY[0x277D284A8];
      if (!*(&self->super.super.isa + v16))
      {
        *(&self->super.super.isa + v16) = [a4 securityLayer];
      }

      [(MFIMAPConnection *)self _updateCapabilitiesForAccount:a3 withAuthenticationResponse:v22];
      goto LABEL_39;
    }
  }

LABEL_40:
  [(MFIMAPConnection *)self mf_unlock];
  [(MFIMAPConnection *)self didFinishCommands:&buf count:1];
  if ([a4 authenticationState] == 3)
  {
    [(MFIMAPConnection *)self disconnectAndNotifyDelegate:0];
  }

  result = [a4 authenticationState] == 4;
  v20 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)startTLSForAccount:(id)a3
{
  [(MFIMAPConnection *)self mf_lock];
  if ([(MFIMAPConnection *)self supportsCapability:0])
  {
    v17 = 0;
    memset(v16, 0, sizeof(v16));
    LODWORD(v16[0]) = 3;
    v5 = [-[MFIMAPConnection _responseFromSendingCommands:count:](self _responseFromSendingCommands:v16 count:{1), "responseType"}];
    v6 = v5 == 2;
    if (v5 != 2)
    {
      v7 = MEMORY[0x277CCACA8];
      v8 = MFLookupLocalizedString();
      v9 = [v7 stringWithFormat:v8, objc_msgSend(objc_opt_class(), "accountTypeString"), objc_msgSend(a3, "hostname")];
      v10 = [MEMORY[0x277D283F8] currentMonitor];
      [v10 setError:{objc_msgSend(MEMORY[0x277D28410], "errorWithDomain:code:localizedDescription:", *MEMORY[0x277D282F8], 1033, v9)}];
    }

    [(MFIMAPConnection *)self didFinishCommands:v16 count:1];
  }

  else
  {
    v11 = MEMORY[0x277CCACA8];
    v12 = MFLookupLocalizedString();
    v13 = [v11 stringWithFormat:v12, objc_msgSend(objc_opt_class(), "accountTypeString"), objc_msgSend(a3, "hostname"), objc_msgSend(a3, "portNumber")];
    v14 = [MEMORY[0x277D283F8] currentMonitor];
    [v14 setError:{objc_msgSend(MEMORY[0x277D28410], "errorWithDomain:code:localizedDescription:", *MEMORY[0x277D282F8], 1034, v13)}];
    v6 = 0;
  }

  [(MFIMAPConnection *)self mf_unlock];
  return v6;
}

- (id)description
{
  selectedMailbox = self->_selectedMailbox;
  v4 = MEMORY[0x277CCACA8];
  v5 = objc_opt_class();
  v6 = description__StateStrings[*(self + 144) & 7];
  if (*(&self->super.super.isa + *MEMORY[0x277D284A0]))
  {
    v7 = ", Fetching";
  }

  else
  {
    v7 = "";
  }

  if (selectedMailbox)
  {
    return [v4 stringWithFormat:@"<%@:%p> [%@%s] delegate=%p mailbox=<%@>", v5, self, v6, v7, self->_delegateState.delegate, self->_selectedMailbox];
  }

  else
  {
    return [v4 stringWithFormat:@"<%@:%p> [%@%s] delegate=%p", v5, self, v6, v7, self->_delegateState.delegate, v9];
  }
}

- (void)notifyDelegateOfBodyLoadStart:(id)a3 section:(id)a4
{
  p_delegateState = &self->_delegateState;
  v8 = [(MFWeakReferenceHolder *)self->_delegateState.holder retainedReference];
  if (v8 && (*(p_delegateState + 8) & 0x10) != 0)
  {
    v9 = v8;
    [v8 connection:self didBeginBodyLoad:a3 section:a4];
    v8 = v9;
  }
}

- (void)notifyDelegateOfBodyLoadAppendage:(id)a3 section:(id)a4
{
  p_delegateState = &self->_delegateState;
  v8 = [(MFWeakReferenceHolder *)self->_delegateState.holder retainedReference];
  if (v8 && (*(p_delegateState + 8) & 0x20) != 0)
  {
    v9 = v8;
    [v8 connection:self didLoadMoreBodyData:a3 section:a4];
    v8 = v9;
  }
}

- (void)notifyDelegateOfBodyLoadCompletion:(id)a3 section:(id)a4
{
  p_delegateState = &self->_delegateState;
  v8 = [(MFWeakReferenceHolder *)self->_delegateState.holder retainedReference];
  if (v8 && (*(p_delegateState + 8) & 0x40) != 0)
  {
    v9 = v8;
    [v8 connection:self didFinishLoadingBodyData:a3 section:a4];
    v8 = v9;
  }
}

- (unsigned)literalChunkSize
{
  p_delegateState = &self->_delegateState;
  v4 = [(MFWeakReferenceHolder *)self->_delegateState.holder retainedReference];
  v5 = v4;
  if (v4 && (*(p_delegateState + 8) & 0x80) != 0)
  {
    v6 = [v4 connectionBodyDataReadChunkSize:self];
  }

  else
  {
    v6 = 4096;
  }

  return v6;
}

- (id)_readDataOfLength:(int64_t)a3
{
  [(NSMutableData *)self->_data setLength:0];
  if (a3 < 1)
  {
    if (a3 < 0 && [(MFConnection *)self readLineIntoData:self->_data])
    {
      v6 = [(NSMutableData *)self->_data bytes];
      if (v6)
      {
        v8 = v6;
        v9 = [(NSMutableData *)self->_data length];
        v7 = v9 - 2;
        if (v9 >= 2 && *(v8 + v9 - 1) == 10 && *(v8 + v7) == 13)
        {
          [(NSMutableData *)self->_data setLength:?];
        }
      }

      if ([(NSMutableData *)self->_data length])
      {
        v10 = [(NSMutableData *)self->_data bytes];
        if (v10)
        {
          v11 = v10;
          if (!*v10)
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

      return self->_data;
    }
  }

  else if ([(MFConnection *)self readBytesIntoData:self->_data desiredLength:a3])
  {
    return self->_data;
  }

  return 0;
}

- (id)_fetchArgumentForMessageSkeletonsWithHeaders:(id)a3
{
  if (!a3)
  {
    [MFIMAPConnection _fetchArgumentForMessageSkeletonsWithHeaders:];
  }

  [(MFIMAPConnection *)self mf_lock];
  if (self->_lastRequiredHeaders && [(NSArray *)self->_lastRequiredHeadersArray isEqualToArray:a3])
  {
    lastRequiredHeaders = self->_lastRequiredHeaders;
  }

  else
  {

    self->_lastRequiredHeadersArray = a3;
    lastRequiredHeaders = objc_msgSend(@"(INTERNALDATE UID RFC822.SIZE FLAGS "), "mutableCopyWithZone:", 0;
    if ([(MFIMAPConnection *)self supportsCapability:16])
    {
      [(NSString *)lastRequiredHeaders appendString:@"MODSEQ "];
    }

    if ([(MFIMAPConnection *)self supportsCapability:19])
    {
      [(NSString *)lastRequiredHeaders appendString:@"X-GM-MSGID "];
    }

    -[NSString appendString:](lastRequiredHeaders, "appendString:", @"BODY.PEEK[HEADER.FIELDS (");
    v6 = [(NSArray *)self->_lastRequiredHeadersArray count];
    if (v6)
    {
      v7 = v6;
      for (i = 0; i != v7; ++i)
      {
        v9 = _IMAPCreateQuotedString([(NSArray *)self->_lastRequiredHeadersArray objectAtIndex:i]);
        if (i)
        {
          [(NSString *)lastRequiredHeaders appendString:@" "];
        }

        [(NSString *)lastRequiredHeaders appendString:v9];
      }
    }

    [(NSString *)lastRequiredHeaders appendString:@"]]"));
    self->_lastRequiredHeaders = lastRequiredHeaders;
  }

  v10 = lastRequiredHeaders;
  [(MFIMAPConnection *)self mf_unlock];
  return lastRequiredHeaders;
}

- (id)_responseFromSendingCommands:(id *)a3 count:(unint64_t)a4
{
  v14 = 0;
  [(MFIMAPConnection *)self mf_lock];
  v7 = [(MFIMAPConnection *)self _sendCommands:a3 count:a4 response:&v14];
  if (v7)
  {
    v8 = &a3[v7];
    v9 = v8 - 1;
    var3 = v8[-1].var3;
    while (1)
    {
      v11 = [(MFIMAPConnection *)self _copyNextTaggedOrContinuationResponseForCommand:v9];
      v14 = v11;
      if (!v11)
      {
        break;
      }

      if (var3 == [objc_msgSend(v11 "tag")])
      {
        v12 = v14;
        break;
      }
    }
  }

  [(MFIMAPConnection *)self locked_scheduleIdle];
  [(MFIMAPConnection *)self mf_unlock];
  return v14;
}

- (BOOL)sendResponsesForCommand:(id *)a3 toQueue:(id)a4
{
  [(MFIMAPConnection *)self mf_lock];
  v7 = 1;
  if ([(MFIMAPConnection *)self _sendCommands:a3 count:1 response:0])
  {
    v8 = [MEMORY[0x277D283F8] currentMonitor];
    var3 = a3->var3;
    while (1)
    {
      v10 = MEMORY[0x259C959F0](1);
      v11 = [(MFIMAPConnection *)self _copyNextServerResponseForCommand:a3];
      if (([v8 shouldCancel] & 1) != 0 || !v11 || (objc_msgSend(v11, "isUntagged") & 1) == 0 && var3 == objc_msgSend(objc_msgSend(v11, "tag"), "intValue"))
      {
        break;
      }

      v12 = [a4 addItem:v11];

      MEMORY[0x259C959E0](v10);
      if ((v12 & 1) == 0)
      {
        v7 = 0;
        goto LABEL_10;
      }
    }

    MEMORY[0x259C959E0](v10);
    v7 = 1;
  }

LABEL_10:
  [(MFIMAPConnection *)self locked_scheduleIdle];
  [(MFIMAPConnection *)self mf_unlock];
  return v7;
}

- (BOOL)sendResponsesForUIDFetchForUIDs:(id)a3 fields:(id)a4 toQueue:(id)a5
{
  v18[2] = *MEMORY[0x277D85DE8];
  v17 = 0;
  v9 = [a3 count];
  v10 = [MEMORY[0x277D283F8] currentMonitor];
  if (v9)
  {
    v11 = v10;
    v12 = 1;
    do
    {
      if ([v11 shouldCancel])
      {
        break;
      }

      v18[0] = [MFIMAPConnection messageSetForNumbers:"messageSetForNumbers:range:maxTokens:indexOfLastNumber:" range:a3 maxTokens:? indexOfLastNumber:?];
      v18[1] = a4;
      *(&v15[0] + 1) = [MEMORY[0x277CBEA60] arrayWithObjects:v18 count:{2, 21, 0, 0, 0, 0}];
      v16 = 0;
      v15[1] = 0uLL;
      v12 &= [(MFIMAPConnection *)self sendResponsesForCommand:v15 toQueue:a5];
    }

    while (v17 < v9);
  }

  else
  {
    LOBYTE(v12) = 1;
  }

  v13 = *MEMORY[0x277D85DE8];
  return v12 & 1;
}

- (BOOL)sendUidAndFlagResponsesForUIDs:(id)a3 sequenceIdentifierProvider:(id)a4 flagSearchResults:(id)a5 toQueue:(id)a6
{
  if (a5 || ![(MFIMAPConnection *)self supportsCapability:16])
  {
    v14 = [(MFIMAPConnection *)self _fetchArgumentForMessageUidsAndFlags:a3];

    return [(MFIMAPConnection *)self sendResponsesForUIDs:a3 fields:v14 flagSearchResults:a5 toQueue:a6];
  }

  else
  {
    v11 = [a4 sequenceIdentifierForUIDs:a3];
    v15 = v11;
    v12 = [(MFIMAPConnection *)self sendResponsesForCondStoreFlagFetchForUIDs:a3 withSequenceIdentifier:&v15 toQueue:a6];
    [a6 flush];
    if (v12 && [v15 length] && (objc_msgSend(v15, "isEqualToString:", v11) & 1) == 0)
    {
      [a4 setSequenceIdentifier:v15 forUIDs:a3];
    }

    return v12;
  }
}

- (BOOL)sendUidResponsesForSearchArguments:(id)a3 toQueue:(id)a4
{
  v17 = 0;
  if ([(MFIMAPConnection *)self supportsCapability:15])
  {
    v7 = [MEMORY[0x277D283F8] currentMonitor];
    v8 = [-[MFIMAPConnection eSearchIDSet:areMessageSequenceNumbers:arguments:success:returning:](self eSearchIDSet:0 areMessageSequenceNumbers:0 arguments:a3 success:&v17 returning:{4), "objectForKey:", @"IMAPESearchAllKey"}];
    v9 = v17;
    if (v17 && v8 != 0)
    {
      v11 = objc_autoreleasePoolPush();
      v12 = [MEMORY[0x277CBEB18] array];
      for (i = [v8 firstIndex]; (objc_msgSend(v7, "shouldCancel") & 1) == 0 && i != 0x7FFFFFFFFFFFFFFFLL; i = objc_msgSend(v8, "indexGreaterThanIndex:", i))
      {
        [v12 addObject:{objc_msgSend(MEMORY[0x277CCABB0], "numberWithUnsignedInteger:", i)}];
      }

      if (([v7 shouldCancel] & 1) == 0)
      {
        v14 = objc_alloc_init(MFIMAPResponse);
        [(MFIMAPResponse *)v14 setResponseType:14];
        [(MFIMAPResponse *)v14 setSearchResults:v12];
        [a4 addItem:v14];
      }

      objc_autoreleasePoolPop(v11);
      return v17;
    }
  }

  else
  {
    v16[1] = a3;
    v16[0] = 24;
    memset(&v16[2], 0, 24);
    return [(MFIMAPConnection *)self sendResponsesForCommand:v16 toQueue:a4];
  }

  return v9;
}

- (id)searchUIDs:(id)a3 withFlagRequests:(id)a4
{
  v25 = *MEMORY[0x277D85DE8];
  if ([@"(UID FLAGS)" isEqualToString:{-[MFIMAPConnection _fetchArgumentForMessageUidsAndFlags](self, "_fetchArgumentForMessageUidsAndFlags")}])
  {
    v7 = [a3 objectAtIndex:0];
    v8 = [a3 lastObject];
    v9 = [MEMORY[0x277CCACA8] stringWithFormat:@"%@:%@", v7, v8];
    v10 = objc_alloc_init(MFIMAPConnectionFlagSearchResults);
    v23 = 1;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v11 = [a4 countByEnumeratingWithState:&v19 objects:v24 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v20;
      while (2)
      {
        for (i = 0; i != v12; ++i)
        {
          if (*v20 != v13)
          {
            objc_enumerationMutation(a4);
          }

          v15 = *(*(&v19 + 1) + 8 * i);
          v16 = -[MFIMAPConnection searchUidSet:forTerms:success:](self, "searchUidSet:forTerms:success:", v9, [v15 searchTerms], &v23);
          if ((v23 & 1) == 0)
          {

            goto LABEL_12;
          }

          -[MFIMAPConnectionFlagSearchResults cacheStateForUIDs:mask:existenceSetsFlag:](v10, "cacheStateForUIDs:mask:existenceSetsFlag:", v16, [v15 mask], objc_msgSend(v15, "isPositiveMatch"));
        }

        v12 = [a4 countByEnumeratingWithState:&v19 objects:v24 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
LABEL_12:
    v10 = 0;
  }

  result = v10;
  v18 = *MEMORY[0x277D85DE8];
  return result;
}

- (BOOL)sendResponsesForUIDs:(id)a3 fields:(id)a4 flagSearchResults:(id)a5 toQueue:(id)a6
{
  v22 = *MEMORY[0x277D85DE8];
  if (a5)
  {
    v19 = 0u;
    v20 = 0u;
    v17 = 0u;
    v18 = 0u;
    v9 = [a3 countByEnumeratingWithState:&v17 objects:v21 count:16];
    if (v9)
    {
      v10 = v9;
      v11 = *v18;
      do
      {
        for (i = 0; i != v10; ++i)
        {
          if (*v18 != v11)
          {
            objc_enumerationMutation(a3);
          }

          v13 = [a5 copyResponseForUID:{objc_msgSend(*(*(&v17 + 1) + 8 * i), "integerValue")}];
          if (v13)
          {
            [a6 addItem:v13];
          }
        }

        v10 = [a3 countByEnumeratingWithState:&v17 objects:v21 count:16];
      }

      while (v10);
    }

    v14 = *MEMORY[0x277D85DE8];
    return 1;
  }

  else
  {
    v16 = *MEMORY[0x277D85DE8];

    return [(MFIMAPConnection *)self sendResponsesForUIDFetchForUIDs:a3 fields:a4 toQueue:a6];
  }
}

- (void)didFinishCommands:(id *)a3 count:(unint64_t)a4
{
  v32 = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    goto LABEL_43;
  }

  v5 = a4;
  *&v4 = 138412290;
  v27 = v4;
  do
  {
    v8 = [a3->var2 count];
    if (!v8)
    {
      goto LABEL_40;
    }

    v9 = v8;
    v10 = 0;
    v11 = 0;
    do
    {
      v12 = [a3->var2 objectAtIndex:v10];
      v13 = [v12 responseType];
      if (v13 > 8)
      {
        if ((v13 - 10) < 2)
        {
          goto LABEL_34;
        }

        if (v13 == 9)
        {
          v17 = [(MFWeakReferenceHolder *)self->_delegateState.holder retainedReference];
          if (v17 && (*(&self->_delegateState + 8) & 0x100) != 0)
          {
            [v17 setServerMessageCount:{objc_msgSend(v12, "number")}];
          }

LABEL_30:

LABEL_34:
          [a3->var2 removeObjectAtIndex:v10];
          --v9;
          continue;
        }

        if (v13 == 17)
        {
          goto LABEL_34;
        }
      }

      else
      {
        if (v13 > 3)
        {
          switch(v13)
          {
            case 4:
              v18 = MFLogGeneral();
              if (!os_log_type_enabled(v18, OS_LOG_TYPE_INFO))
              {
                goto LABEL_34;
              }

              v19 = _IMAPCommandTable[a3->var0];
              *buf = 136315394;
              v29 = v19;
              v30 = 2112;
              v31 = v12;
              v20 = v18;
              v21 = "Unhandled response to command %s: %@";
              break;
            case 6:
              v22 = MFLogGeneral();
              v11 = 1;
              if (!os_log_type_enabled(v22, OS_LOG_TYPE_INFO))
              {
                goto LABEL_34;
              }

              v23 = _IMAPCommandTable[a3->var0];
              *buf = 136315394;
              v29 = v23;
              v30 = 2112;
              v31 = v12;
              v20 = v22;
              v21 = "MFIMAPConnection was lost during processing of command %s: %@.";
              break;
            case 7:
              v14 = [v12 capabilities];
              if (v14)
              {
                v15 = v14;
                [(MFIMAPConnection *)self mf_lock];
                [(MFIMAPConnection *)self _clearCapabilities];
                [(MFIMAPConnection *)self _addCapabilities:v15];
                [(MFIMAPConnection *)self mf_unlock];
              }

              goto LABEL_34;
            default:
              goto LABEL_37;
          }

          _os_log_impl(&dword_258B7A000, v20, OS_LOG_TYPE_INFO, v21, buf, 0x16u);
          goto LABEL_34;
        }

        if (v13 == 2)
        {
          if ([v12 responseCode] == 12)
          {
            v17 = [(MFWeakReferenceHolder *)self->_delegateState.holder retainedReference];
            if (v17 && (*(&self->_delegateState + 8) & 0x200) != 0)
            {
              [v17 setHighestModSequence:{objc_msgSend(objc_msgSend(v12, "responseInfo"), "unsignedLongLongValue")}];
            }

            goto LABEL_30;
          }

          goto LABEL_34;
        }

        if (v13 == 3)
        {
          v16 = MFLogGeneral();
          if (os_log_type_enabled(v16, OS_LOG_TYPE_ERROR))
          {
            v24 = [(MFIMAPConnection *)self _errorForResponse:v12 commandParams:a3];
            *buf = v27;
            v29 = v24;
            _os_log_error_impl(&dword_258B7A000, v16, OS_LOG_TYPE_ERROR, "%@", buf, 0xCu);
          }

          self->_gotBadResponse = 1;
          goto LABEL_34;
        }
      }

LABEL_37:
      ++v10;
    }

    while (v10 < v9);
    if (v11)
    {
      [(MFIMAPConnection *)self disconnectAndNotifyDelegate:1];
    }

LABEL_40:
    var2 = a3->var2;
    if (var2)
    {

      a3->var2 = 0;
    }

    ++a3;
    --v5;
  }

  while (v5);
LABEL_43:
  v26 = *MEMORY[0x277D85DE8];
}

- (id)_messageIDsFromFetchResultData:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v4 = [MEMORY[0x277CBEB58] set];
  v5 = [objc_alloc(MEMORY[0x277CCACA8]) initWithBytes:objc_msgSend(a3 length:"bytes") encoding:{objc_msgSend(a3, "length"), 4}];
  v6 = [v5 stringByTrimmingCharactersInSet:{objc_msgSend(MEMORY[0x277CCA900], "whitespaceAndNewlineCharacterSet")}];

  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  v38 = 0u;
  obj = [v6 componentsSeparatedByString:@"\r\n"];
  v7 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
  if (v7)
  {
    v8 = v7;
    v30 = *v36;
    do
    {
      for (i = 0; i != v8; ++i)
      {
        if (*v36 != v30)
        {
          objc_enumerationMutation(obj);
        }

        v10 = *(*(&v35 + 1) + 8 * i);
        v11 = [v10 length];
        v12 = [@"In-Reply-To:" length];
        if (v11 >= v12)
        {
          v13 = v12;
        }

        else
        {
          v13 = v11;
        }

        v14 = [v10 rangeOfString:@"In-Reply-To:" options:1 range:{0, v13}];
        if (v14 == 0x7FFFFFFFFFFFFFFFLL)
        {
          v16 = [v10 length];
          v17 = [@"References:" length];
          if (v16 >= v17)
          {
            v18 = v17;
          }

          else
          {
            v18 = v16;
          }

          v14 = [v10 rangeOfString:@"References:" options:1 range:{0, v18}];
        }

        if (!v14)
        {
          v10 = [v10 substringFromIndex:v15];
        }

        v19 = [objc_msgSend(v10 stringByTrimmingCharactersInSet:{objc_msgSend(MEMORY[0x277CCA900], "whitespaceAndNewlineCharacterSet")), "componentsSeparatedByString:", @">"}];
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v20 = [v19 countByEnumeratingWithState:&v31 objects:v39 count:16];
        if (v20)
        {
          v21 = v20;
          v22 = *v32;
          do
          {
            for (j = 0; j != v21; ++j)
            {
              if (*v32 != v22)
              {
                objc_enumerationMutation(v19);
              }

              v24 = *(*(&v31 + 1) + 8 * j);
              v25 = [v24 rangeOfString:@"<" options:2 range:{0, objc_msgSend(v24, "length")}];
              if (v25 != 0x7FFFFFFFFFFFFFFFLL)
              {
                v24 = [v24 substringFromIndex:v25 + v26];
              }

              if ([v24 length])
              {
                [v4 addObject:v24];
              }
            }

            v21 = [v19 countByEnumeratingWithState:&v31 objects:v39 count:16];
          }

          while (v21);
        }
      }

      v8 = [obj countByEnumeratingWithState:&v35 objects:v40 count:16];
    }

    while (v8);
  }

  v27 = *MEMORY[0x277D85DE8];
  return v4;
}

- (id)_getReferencesForMessageSet:(id)a3
{
  v41 = *MEMORY[0x277D85DE8];
  v5 = [MEMORY[0x277CBEB58] set];
  v31 = [objc_allocWithZone(MEMORY[0x277CBEB18]) initWithCapacity:2];
  v30 = 21;
  v33 = 0;
  v34 = 0;
  v32 = 0;
  [v31 addObject:a3];
  [v31 addObject:@"BODY[HEADER.FIELDS (REFERENCES IN-REPLY-TO)]"];
  if ([-[MFIMAPConnection _responseFromSendingCommands:count:](self _responseFromSendingCommands:&v30 count:{1), "responseType"}] == 2)
  {
    v28 = 0u;
    v29 = 0u;
    v26 = 0u;
    v27 = 0u;
    obj = v32;
    v21 = [v32 countByEnumeratingWithState:&v26 objects:v40 count:16];
    if (v21)
    {
      v20 = *v27;
      do
      {
        for (i = 0; i != v21; ++i)
        {
          if (*v27 != v20)
          {
            objc_enumerationMutation(obj);
          }

          v7 = *(*(&v26 + 1) + 8 * i);
          v22 = 0u;
          v23 = 0u;
          v24 = 0u;
          v25 = 0u;
          v8 = [v7 fetchResults];
          v9 = [v8 countByEnumeratingWithState:&v22 objects:v39 count:16];
          if (v9)
          {
            v10 = v9;
            v11 = *v23;
            do
            {
              for (j = 0; j != v10; ++j)
              {
                if (*v23 != v11)
                {
                  objc_enumerationMutation(v8);
                }

                v13 = *(*(&v22 + 1) + 8 * j);
                v14 = [v13 type];
                if (v14 != 8)
                {
                  if (v14 == 4)
                  {
                    [v5 unionSet:{-[MFIMAPConnection _messageIDsFromFetchResultData:](self, "_messageIDsFromFetchResultData:", objc_msgSend(v13, "fetchData"))}];
                  }

                  else
                  {
                    v15 = MFLogGeneral();
                    if (os_log_type_enabled(v15, OS_LOG_TYPE_ERROR))
                    {
                      v16 = [v13 type];
                      *buf = 138412546;
                      v36 = v13;
                      v37 = 1024;
                      v38 = v16;
                      _os_log_error_impl(&dword_258B7A000, v15, OS_LOG_TYPE_ERROR, "ERROR: UNKNOWN RESULT: %@ %d", buf, 0x12u);
                    }
                  }
                }
              }

              v10 = [v8 countByEnumeratingWithState:&v22 objects:v39 count:16];
            }

            while (v10);
          }
        }

        v21 = [obj countByEnumeratingWithState:&v26 objects:v40 count:16];
      }

      while (v21);
    }
  }

  v17 = *MEMORY[0x277D85DE8];
  return v5;
}

- (id)_searchUidsForMessageIDs:(id)a3 excludeDeleted:(BOOL)a4
{
  v4 = a4;
  v7 = [a3 count];
  v8 = v7 - 1;
  v9 = [objc_alloc(MEMORY[0x277CBEB18]) initWithCapacity:4 * v7];
  v13[0] = MEMORY[0x277D85DD0];
  v13[1] = 3221225472;
  v13[2] = __80__MFIMAPConnection_ReferenceSearching___searchUidsForMessageIDs_excludeDeleted___block_invoke;
  v13[3] = &unk_2798B1930;
  v13[4] = v9;
  v13[5] = v8;
  [a3 enumerateObjectsUsingBlock:v13];
  if (v4)
  {
    [v9 addObject:@"UNDELETED"];
  }

  v12 = 0;
  v10 = [(MFIMAPConnection *)self searchIDSet:0 forTerms:v9 success:&v12];

  return v10;
}

uint64_t __80__MFIMAPConnection_ReferenceSearching___searchUidsForMessageIDs_excludeDeleted___block_invoke(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (*(a1 + 40) > a3)
  {
    [*(a1 + 32) addObject:@"OR"];
  }

  [*(a1 + 32) addObject:@"HEADER"];
  [*(a1 + 32) addObject:@"Message-ID"];
  v5 = *(a1 + 32);

  return [v5 addObject:a2];
}

- (id)_getFirstLevelMessageIDsForReference:(id)a3
{
  v5 = [MEMORY[0x277CBEB58] set];
  v6 = -[MFIMAPConnection _uidsForMessageIDs:excludeDeleted:](self, "_uidsForMessageIDs:excludeDeleted:", [MEMORY[0x277CBEB98] setWithObject:a3], 0);
  if ([v6 count])
  {
    [v5 unionSet:{-[MFIMAPConnection _getReferencesForMessageSet:](self, "_getReferencesForMessageSet:", -[MFIMAPConnection messageSetForNumbers:](self, "messageSetForNumbers:", objc_msgSend(v6, "allObjects")))}];
  }

  return v5;
}

- (id)uidsReferencedBy:(id)a3
{
  v19 = *MEMORY[0x277D85DE8];
  v5 = objc_alloc_init(MEMORY[0x277CBEB58]);
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v6 = [a3 countByEnumeratingWithState:&v14 objects:v18 count:16];
  if (v6)
  {
    v7 = v6;
    v8 = *v15;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(a3);
        }

        v10 = [-[MFIMAPConnection _getFirstLevelMessageIDsForReference:](self _getFirstLevelMessageIDsForReference:{*(*(&v14 + 1) + 8 * v9)), "mutableCopy"}];
        [v10 minusSet:a3];
        [v5 unionSet:v10];

        ++v9;
      }

      while (v7 != v9);
      v7 = [a3 countByEnumeratingWithState:&v14 objects:v18 count:16];
    }

    while (v7);
  }

  v11 = [(MFIMAPConnection *)self _uidsForMessageIDs:v5 excludeDeleted:0];

  v12 = *MEMORY[0x277D85DE8];
  return v11;
}

- (int64_t)_moveMessageSet:(id)a3 toMailboxName:(id)a4 command:(int)a5 newMessageInfo:(id *)a6
{
  v22[2] = *MEMORY[0x277D85DE8];
  if (!a4)
  {
    [MFIMAPConnection(Move) _moveMessageSet:a2 toMailboxName:self command:? newMessageInfo:?];
  }

  if ((a5 & 0xFFFFFFFE) != 0x24)
  {
    [MFIMAPConnection(Move) _moveMessageSet:a2 toMailboxName:self command:? newMessageInfo:?];
  }

  if ([(MFIMAPConnection *)self supportsCapability:20])
  {
    v12 = [(MFIMAPConnection *)self messageSetForNumbers:a3];
    if (v12)
    {
      v22[0] = v12;
      v22[1] = MFIMAPStringFromMailboxName(a4);
      v18[1] = [MEMORY[0x277CBEA60] arrayWithObjects:v22 count:2];
      v18[0] = a5;
      v20 = 0;
      v21 = 0;
      v19 = 0;
      v13 = [-[MFIMAPConnection _responseFromSendingCommand:andPossiblyCreateMailbox:](self _responseFromSendingCommand:v18 andPossiblyCreateMailbox:{a4), "responseType"}];
      v14 = v13;
      if (a6 && v13 == 2)
      {
        *a6 = [objc_opt_class() _UIDPlusInfoFromIMAPResponses:v19];
      }

      v15 = v14 != 2;
      [(MFIMAPConnection *)self didFinishCommands:v18 count:1];
    }

    else
    {
      v15 = 1;
    }
  }

  else
  {
    v15 = 2;
  }

  v16 = *MEMORY[0x277D85DE8];
  return v15;
}

+ (id)_UIDPlusInfoFromIMAPResponses:(id)a3
{
  result = [a3 ef_firstObjectPassingTest:&__block_literal_global_5];
  if (result)
  {

    return MFUIDPlusInfoFromResponse(result);
  }

  return result;
}

- (void)_sendApplePushForAccountIfSupported:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_258B7A000, v0, v1, "#aps-push account %@ rejected XAPPLEPUSHSERVICE request: %@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)_sendApplePushForAccountIfSupported:(uint64_t)a1 .cold.2(uint64_t a1, uint64_t *a2)
{
  v6 = *MEMORY[0x277D85DE8];
  v2 = *a2;
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_2(&dword_258B7A000, v3, v4, "#aps-push account %@ specified bad version/topic in response: %@");
  v5 = *MEMORY[0x277D85DE8];
}

- (void)_sendApplePushForAccountIfSupported:.cold.3()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_0_0();
  _os_log_error_impl(&dword_258B7A000, v0, OS_LOG_TYPE_ERROR, "#aps-push account %@ received mailbox responses but version 1 response, ignoring mailboxes", v2, 0xCu);
  v1 = *MEMORY[0x277D85DE8];
}

- (void)copyArgumentForSearchTerm:.cold.1()
{
  v5 = *MEMORY[0x277D85DE8];
  objc_opt_class();
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_fault_impl(v0, v1, OS_LOG_TYPE_FAULT, v2, v3, 0xCu);
  v4 = *MEMORY[0x277D85DE8];
}

- (void)authenticateUsingAccount:(id *)a1 authenticator:.cold.1(id *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  [*a1 userString];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, OS_LOG_TYPE_ERROR, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

- (void)authenticateUsingAccount:(id *)a1 authenticator:.cold.2(id *a1)
{
  v6 = *MEMORY[0x277D85DE8];
  [*a1 userString];
  OUTLINED_FUNCTION_0_0();
  OUTLINED_FUNCTION_1();
  _os_log_error_impl(v1, v2, OS_LOG_TYPE_ERROR, v3, v4, 0xCu);
  v5 = *MEMORY[0x277D85DE8];
}

@end