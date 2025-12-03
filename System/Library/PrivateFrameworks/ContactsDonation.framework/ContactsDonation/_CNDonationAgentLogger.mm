@interface _CNDonationAgentLogger
- (_CNDonationAgentLogger)init;
- (void)acceptingConnectionFromProcess:(int)process;
- (void)acceptingDonations:(id)donations;
- (void)agentDidHandleRequest:(SEL)request;
- (void)agentDidStart;
- (void)agentWillHandleRequest:(SEL)request;
- (void)agentWillStart;
- (void)agentWillStop;
- (void)beginRestorePersistedState;
- (void)contactsChangedNotificationEmailAddressesChanged:(BOOL)changed;
- (void)contactsChangedNotificationFoundName:(BOOL)name nameChanged:(BOOL)changed;
- (void)couldNotRejectClusterIdentifier:(id)identifier error:(id)error;
- (void)couldNotRejectDonationIdentifier:(id)identifier error:(id)error;
- (void)couldNotRejectUnknownClusterIdentifier:(id)identifier;
- (void)couldNotRejectUnknownDonationIdentifier:(id)identifier;
- (void)couldNotRenewBecauseDonorError:(id)error;
- (void)couldNotRenewBecauseLoadingError:(id)error;
- (void)couldNotRenewBecauseNotADonorExtension:(id)extension;
- (void)denyingRequestFromProcess:(int)process;
- (void)didDiscoverExtension:(id)extension;
- (void)didDiscoverExtensions;
- (void)didDiscoverUnexpectedExtensionType:(id)type;
- (void)didFailToDiscoverExtensions:(id)extensions;
- (void)didListRejections;
- (void)didRejectClusterIdentifier:(id)identifier;
- (void)didRejectDonationIdentifier:(id)identifier;
- (void)didRemoveAllRejections;
- (void)didRenewValue:(id)value untilDate:(id)date;
- (void)donationServiceDidStart;
- (void)donationServiceWillStart;
- (void)donationServiceWillStop;
- (void)endRestorePersistedState;
- (void)featureDidDisable;
- (void)featureDidEnable;
- (void)featureNotEnabled:(SEL)enabled;
- (void)featureWillDisable;
- (void)featureWillEnable;
- (void)foundUnhashableValue:(id)value;
- (void)maintenanceServiceDidStart;
- (void)maintenanceServiceWillStart;
- (void)maintenanceServiceWillStop;
- (void)preExpiredDonations:(id)donations;
- (void)willDiscoverExtensions;
- (void)willListRejections;
- (void)willLoadExtensionVersions;
- (void)willRejectClusterIdentifier:(id)identifier;
- (void)willRejectDonationIdentifier:(id)identifier;
- (void)willRemoveAllRejections;
- (void)willRenewValues:(id)values withDonor:(id)donor;
- (void)willSaveExtensionVersions;
@end

@implementation _CNDonationAgentLogger

- (_CNDonationAgentLogger)init
{
  v7.receiver = self;
  v7.super_class = _CNDonationAgentLogger;
  v2 = [(_CNDonationAgentLogger *)&v7 init];
  if (v2)
  {
    v3 = os_log_create("com.apple.contacts.donation", "agent");
    log_t = v2->_log_t;
    v2->_log_t = v3;

    v5 = v2;
  }

  return v2;
}

- (void)agentWillStart
{
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "will start agent", v3, 2u);
  }
}

- (void)agentDidStart
{
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "did start agent", v3, 2u);
  }
}

- (void)agentWillStop
{
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "will stop agent", v3, 2u);
  }
}

- (void)donationServiceWillStart
{
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "will start donation service", v3, 2u);
  }
}

- (void)donationServiceDidStart
{
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "did start donation service", v3, 2u);
  }
}

- (void)donationServiceWillStop
{
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "will stop donation service", v3, 2u);
  }
}

- (void)maintenanceServiceWillStart
{
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "will start maintenance service", v3, 2u);
  }
}

- (void)maintenanceServiceDidStart
{
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "did start maintenance service", v3, 2u);
  }
}

- (void)maintenanceServiceWillStop
{
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "maintenance service stopping", v3, 2u);
  }
}

- (void)beginRestorePersistedState
{
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "will restore persisted state", v3, 2u);
  }
}

- (void)endRestorePersistedState
{
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "did restore persisted state", v3, 2u);
  }
}

- (void)acceptingConnectionFromProcess:(int)process
{
  v7 = *MEMORY[0x277D85DE8];
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = process;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "Accepting connection from process %d", v6, 8u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)denyingRequestFromProcess:(int)process
{
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_ERROR))
  {
    [(_CNDonationAgentLogger *)process denyingRequestFromProcess:log_t];
  }
}

- (void)acceptingDonations:(id)donations
{
  v21 = *MEMORY[0x277D85DE8];
  donationsCopy = donations;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [donationsCopy countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v15;
    *&v6 = 138543362;
    v13 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(donationsCopy);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        log_t = [(_CNDonationAgentLogger *)self log_t];
        if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v13;
          v19 = v10;
          _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "Accepting donation: %{public}@", buf, 0xCu);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [donationsCopy countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)preExpiredDonations:(id)donations
{
  v21 = *MEMORY[0x277D85DE8];
  donationsCopy = donations;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [donationsCopy countByEnumeratingWithState:&v14 objects:v20 count:16];
  if (v5)
  {
    v7 = v5;
    v8 = *v15;
    *&v6 = 138412290;
    v13 = v6;
    do
    {
      v9 = 0;
      do
      {
        if (*v15 != v8)
        {
          objc_enumerationMutation(donationsCopy);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        log_t = [(_CNDonationAgentLogger *)self log_t];
        if (os_log_type_enabled(log_t, OS_LOG_TYPE_ERROR))
        {
          *buf = v13;
          v19 = v10;
          _os_log_error_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_ERROR, "Donation (%@) already expired. Asking the extension to renew. In the future, this value will not be persisted and you will not be asked to renew it.", buf, 0xCu);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [donationsCopy countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)agentWillHandleRequest:(SEL)request
{
  v9 = *MEMORY[0x277D85DE8];
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(request);
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "Will handle request: %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)agentDidHandleRequest:(SEL)request
{
  v9 = *MEMORY[0x277D85DE8];
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(request);
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "Did handle request: %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)featureNotEnabled:(SEL)enabled
{
  v9 = *MEMORY[0x277D85DE8];
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(enabled);
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "Could not handle request because feature not enabled: %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)featureWillDisable
{
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "Will disable feature", v3, 2u);
  }
}

- (void)featureDidDisable
{
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "Did disable feature", v3, 2u);
  }
}

- (void)featureWillEnable
{
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "Will enable feature", v3, 2u);
  }
}

- (void)featureDidEnable
{
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "Did enable feature", v3, 2u);
  }
}

- (void)contactsChangedNotificationFoundName:(BOOL)name nameChanged:(BOOL)changed
{
  changedCopy = changed;
  nameCopy = name;
  v11 = *MEMORY[0x277D85DE8];
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_INFO))
  {
    v8[0] = 67109376;
    v8[1] = nameCopy;
    v9 = 1024;
    v10 = changedCopy;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_INFO, "Notified of contacts change. Found name: %u. Changed name: %u.", v8, 0xEu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)contactsChangedNotificationEmailAddressesChanged:(BOOL)changed
{
  changedCopy = changed;
  v7 = *MEMORY[0x277D85DE8];
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109120;
    v6[1] = changedCopy;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_INFO, "Notified of contacts change. Email addresses changed: %u.", v6, 8u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)willDiscoverExtensions
{
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "Will discover extensions", v3, 2u);
  }
}

- (void)didDiscoverExtension:(id)extension
{
  v9 = *MEMORY[0x277D85DE8];
  extensionCopy = extension;
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_INFO))
  {
    v7 = 138543362;
    v8 = extensionCopy;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_INFO, "Did discover extension: %{public}@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)didDiscoverUnexpectedExtensionType:(id)type
{
  typeCopy = type;
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_ERROR))
  {
    [_CNDonationAgentLogger didDiscoverUnexpectedExtensionType:];
  }
}

- (void)didDiscoverExtensions
{
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "Did discover extensions", v3, 2u);
  }
}

- (void)didFailToDiscoverExtensions:(id)extensions
{
  extensionsCopy = extensions;
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_ERROR))
  {
    [_CNDonationAgentLogger didFailToDiscoverExtensions:];
  }
}

- (void)willLoadExtensionVersions
{
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_INFO, "Will load extension versions", v3, 2u);
  }
}

- (void)willSaveExtensionVersions
{
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_INFO, "Will save extension versions", v3, 2u);
  }
}

- (void)willRejectDonationIdentifier:(id)identifier
{
  v9 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_INFO))
  {
    v7 = 138543362;
    v8 = identifierCopy;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_INFO, "Will reject donation with identifier '%{public}@'", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)didRejectDonationIdentifier:(id)identifier
{
  v9 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_INFO))
  {
    v7 = 138543362;
    v8 = identifierCopy;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_INFO, "Did reject donation with identifier '%{public}@'", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)couldNotRejectUnknownDonationIdentifier:(id)identifier
{
  identifierCopy = identifier;
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_ERROR))
  {
    [_CNDonationAgentLogger couldNotRejectUnknownDonationIdentifier:];
  }
}

- (void)couldNotRejectDonationIdentifier:(id)identifier error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_ERROR))
  {
    [_CNDonationAgentLogger couldNotRejectDonationIdentifier:error:];
  }
}

- (void)willRejectClusterIdentifier:(id)identifier
{
  v9 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = identifierCopy;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_INFO, "Will reject donations with cluster identifier '%@'", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)didRejectClusterIdentifier:(id)identifier
{
  v9 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = identifierCopy;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_INFO, "Will reject donations with cluster identifier '%@'", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)couldNotRejectUnknownClusterIdentifier:(id)identifier
{
  v9 = *MEMORY[0x277D85DE8];
  identifierCopy = identifier;
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = identifierCopy;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_INFO, "Could not reject cluster with unknown identifier '%@'", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)couldNotRejectClusterIdentifier:(id)identifier error:(id)error
{
  identifierCopy = identifier;
  errorCopy = error;
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_ERROR))
  {
    [_CNDonationAgentLogger couldNotRejectClusterIdentifier:error:];
  }
}

- (void)willListRejections
{
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_INFO, "Will list rejections", v3, 2u);
  }
}

- (void)didListRejections
{
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_INFO, "Did list rejections", v3, 2u);
  }
}

- (void)willRemoveAllRejections
{
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_INFO, "Will remove all rejections", v3, 2u);
  }
}

- (void)didRemoveAllRejections
{
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_INFO, "Did remove all rejections", v3, 2u);
  }
}

- (void)foundUnhashableValue:(id)value
{
  valueCopy = value;
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_ERROR))
  {
    [_CNDonationAgentLogger foundUnhashableValue:];
  }
}

- (void)couldNotRenewBecauseDonorError:(id)error
{
  errorCopy = error;
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_ERROR))
  {
    [_CNDonationAgentLogger couldNotRenewBecauseDonorError:];
  }
}

- (void)couldNotRenewBecauseLoadingError:(id)error
{
  errorCopy = error;
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_ERROR))
  {
    [_CNDonationAgentLogger couldNotRenewBecauseLoadingError:];
  }
}

- (void)couldNotRenewBecauseNotADonorExtension:(id)extension
{
  extensionCopy = extension;
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_ERROR))
  {
    [_CNDonationAgentLogger couldNotRenewBecauseNotADonorExtension:];
  }
}

- (void)didRenewValue:(id)value untilDate:(id)date
{
  v16 = *MEMORY[0x277D85DE8];
  valueCopy = value;
  dateCopy = date;
  log_t = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
  {
    origin = [valueCopy origin];
    donationIdentifier = [origin donationIdentifier];
    v12 = 138543618;
    v13 = donationIdentifier;
    v14 = 2114;
    v15 = dateCopy;
    _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "Donation %{public}@ has been renewed until %{public}@", &v12, 0x16u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)willRenewValues:(id)values withDonor:(id)donor
{
  v28 = *MEMORY[0x277D85DE8];
  valuesCopy = values;
  donorCopy = donor;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [valuesCopy countByEnumeratingWithState:&v19 objects:v27 count:16];
  if (v8)
  {
    v10 = v8;
    v11 = *v20;
    *&v9 = 138543618;
    v18 = v9;
    do
    {
      v12 = 0;
      do
      {
        if (*v20 != v11)
        {
          objc_enumerationMutation(valuesCopy);
        }

        v13 = *(*(&v19 + 1) + 8 * v12);
        log_t = [(_CNDonationAgentLogger *)self log_t];
        if (os_log_type_enabled(log_t, OS_LOG_TYPE_DEFAULT))
        {
          origin = [v13 origin];
          donationIdentifier = [origin donationIdentifier];
          *buf = v18;
          v24 = donationIdentifier;
          v25 = 2114;
          v26 = donorCopy;
          _os_log_impl(&dword_2258E5000, log_t, OS_LOG_TYPE_DEFAULT, "Will renew donation %{public}@ with donor %{public}@", buf, 0x16u);
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [valuesCopy countByEnumeratingWithState:&v19 objects:v27 count:16];
    }

    while (v10);
  }

  v17 = *MEMORY[0x277D85DE8];
}

- (void)denyingRequestFromProcess:(int)a1 .cold.1(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x277D85DE8];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_2258E5000, a2, OS_LOG_TYPE_ERROR, "Denying request lacking authorization from process %d", v3, 8u);
  v2 = *MEMORY[0x277D85DE8];
}

- (void)didDiscoverUnexpectedExtensionType:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_2258E5000, v0, v1, "Did discover extension: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)didFailToDiscoverExtensions:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_2258E5000, v0, v1, "Failed to discover extensions: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)couldNotRejectUnknownDonationIdentifier:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_2258E5000, v0, v1, "Could not reject donation with unknown identifier '%{public}@'", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)couldNotRejectDonationIdentifier:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_2258E5000, v0, v1, "Could not reject donation identifier '%{public}@': %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)couldNotRejectClusterIdentifier:error:.cold.1()
{
  v3 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_2(&dword_2258E5000, v0, v1, "Could not reject cluster identifier '%{public}@': %{public}@");
  v2 = *MEMORY[0x277D85DE8];
}

- (void)foundUnhashableValue:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_2258E5000, v0, v1, "Blacklisting an unhashable value: %{public}@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)couldNotRenewBecauseDonorError:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_2258E5000, v0, v1, "Could not renew donation because the donor extension returned an error: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)couldNotRenewBecauseLoadingError:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_2258E5000, v0, v1, "Could not renew donation because there was an error loading the donor extension: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

- (void)couldNotRenewBecauseNotADonorExtension:.cold.1()
{
  v8 = *MEMORY[0x277D85DE8];
  OUTLINED_FUNCTION_1();
  OUTLINED_FUNCTION_0(&dword_2258E5000, v0, v1, "Could not renew donation because this isn’t a donor extension: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x277D85DE8];
}

@end