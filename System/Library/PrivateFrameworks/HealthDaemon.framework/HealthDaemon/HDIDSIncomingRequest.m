@interface HDIDSIncomingRequest
- (NSString)description;
- (PBCodable)pbRequest;
- (id)nanoSyncDescription;
- (void)dealloc;
@end

@implementation HDIDSIncomingRequest

- (id)nanoSyncDescription
{
  v3 = [(HDIDSIncomingRequest *)self pbRequest];
  v4 = HDNanoSyncDescriptionSafe(v3);

  LODWORD(v3) = [(HDIDSIncomingRequest *)self messageID];
  v5 = [(HDIDSIncomingRequest *)self idsIdentifier];
  v6 = FormattedMessageDescription(v3, 1, 1, v5, v4);

  return v6;
}

- (PBCodable)pbRequest
{
  pbRequest = self->_pbRequest;
  if (!pbRequest)
  {
    WeakRetained = objc_loadWeakRetained(&self->_messageCenter);
    v6 = [(HDIDSMessageCenter *)WeakRetained _pbMappingForMessageID:?];

    if (v6)
    {
      v7 = v6[1];
    }

    else
    {
      v11 = [MEMORY[0x277CCA890] currentHandler];
      [v11 handleFailureInMethod:a2 object:self file:@"HDIDSMessageCenter.m" lineNumber:805 description:{@"Can't access -pbRequest without a mapping for messageID: %hu", self->_messageID}];

      v7 = 0;
    }

    v8 = [[v7 alloc] initWithData:self->_data];
    v9 = self->_pbRequest;
    self->_pbRequest = v8;

    pbRequest = self->_pbRequest;
  }

  return pbRequest;
}

- (void)dealloc
{
  v13 = *MEMORY[0x277D85DE8];
  if (self->_expectsResponse)
  {
    response = self->_response;
    if (!response || !response->_sent)
    {
      _HKInitializeLogging();
      v4 = *MEMORY[0x277CCC328];
      if (os_log_type_enabled(*MEMORY[0x277CCC328], OS_LOG_TYPE_DEFAULT))
      {
        v5 = v4;
        *buf = 138412546;
        v10 = objc_opt_class();
        v11 = 2112;
        v12 = self;
        v6 = v10;
        _os_log_impl(&dword_228986000, v5, OS_LOG_TYPE_DEFAULT, "%@ (%@) deallocated without sending a response", buf, 0x16u);
      }
    }
  }

  v8.receiver = self;
  v8.super_class = HDIDSIncomingRequest;
  [(HDIDSIncomingRequest *)&v8 dealloc];
  v7 = *MEMORY[0x277D85DE8];
}

- (NSString)description
{
  v3 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  v6 = [v3 stringWithFormat:@"<%@ %p> messageID: %hu", v5, self, self->_messageID];

  return v6;
}

@end