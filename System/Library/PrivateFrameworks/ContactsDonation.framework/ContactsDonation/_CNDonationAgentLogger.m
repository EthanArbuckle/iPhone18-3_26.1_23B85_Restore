@interface _CNDonationAgentLogger
- (_CNDonationAgentLogger)init;
- (void)acceptingConnectionFromProcess:(int)a3;
- (void)acceptingDonations:(id)a3;
- (void)agentDidHandleRequest:(SEL)a3;
- (void)agentDidStart;
- (void)agentWillHandleRequest:(SEL)a3;
- (void)agentWillStart;
- (void)agentWillStop;
- (void)beginRestorePersistedState;
- (void)contactsChangedNotificationEmailAddressesChanged:(BOOL)a3;
- (void)contactsChangedNotificationFoundName:(BOOL)a3 nameChanged:(BOOL)a4;
- (void)couldNotRejectClusterIdentifier:(id)a3 error:(id)a4;
- (void)couldNotRejectDonationIdentifier:(id)a3 error:(id)a4;
- (void)couldNotRejectUnknownClusterIdentifier:(id)a3;
- (void)couldNotRejectUnknownDonationIdentifier:(id)a3;
- (void)couldNotRenewBecauseDonorError:(id)a3;
- (void)couldNotRenewBecauseLoadingError:(id)a3;
- (void)couldNotRenewBecauseNotADonorExtension:(id)a3;
- (void)denyingRequestFromProcess:(int)a3;
- (void)didDiscoverExtension:(id)a3;
- (void)didDiscoverExtensions;
- (void)didDiscoverUnexpectedExtensionType:(id)a3;
- (void)didFailToDiscoverExtensions:(id)a3;
- (void)didListRejections;
- (void)didRejectClusterIdentifier:(id)a3;
- (void)didRejectDonationIdentifier:(id)a3;
- (void)didRemoveAllRejections;
- (void)didRenewValue:(id)a3 untilDate:(id)a4;
- (void)donationServiceDidStart;
- (void)donationServiceWillStart;
- (void)donationServiceWillStop;
- (void)endRestorePersistedState;
- (void)featureDidDisable;
- (void)featureDidEnable;
- (void)featureNotEnabled:(SEL)a3;
- (void)featureWillDisable;
- (void)featureWillEnable;
- (void)foundUnhashableValue:(id)a3;
- (void)maintenanceServiceDidStart;
- (void)maintenanceServiceWillStart;
- (void)maintenanceServiceWillStop;
- (void)preExpiredDonations:(id)a3;
- (void)willDiscoverExtensions;
- (void)willListRejections;
- (void)willLoadExtensionVersions;
- (void)willRejectClusterIdentifier:(id)a3;
- (void)willRejectDonationIdentifier:(id)a3;
- (void)willRemoveAllRejections;
- (void)willRenewValues:(id)a3 withDonor:(id)a4;
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
  v2 = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, v2, OS_LOG_TYPE_DEFAULT, "will start agent", v3, 2u);
  }
}

- (void)agentDidStart
{
  v2 = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, v2, OS_LOG_TYPE_DEFAULT, "did start agent", v3, 2u);
  }
}

- (void)agentWillStop
{
  v2 = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, v2, OS_LOG_TYPE_DEFAULT, "will stop agent", v3, 2u);
  }
}

- (void)donationServiceWillStart
{
  v2 = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, v2, OS_LOG_TYPE_DEFAULT, "will start donation service", v3, 2u);
  }
}

- (void)donationServiceDidStart
{
  v2 = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, v2, OS_LOG_TYPE_DEFAULT, "did start donation service", v3, 2u);
  }
}

- (void)donationServiceWillStop
{
  v2 = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, v2, OS_LOG_TYPE_DEFAULT, "will stop donation service", v3, 2u);
  }
}

- (void)maintenanceServiceWillStart
{
  v2 = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, v2, OS_LOG_TYPE_DEFAULT, "will start maintenance service", v3, 2u);
  }
}

- (void)maintenanceServiceDidStart
{
  v2 = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, v2, OS_LOG_TYPE_DEFAULT, "did start maintenance service", v3, 2u);
  }
}

- (void)maintenanceServiceWillStop
{
  v2 = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, v2, OS_LOG_TYPE_DEFAULT, "maintenance service stopping", v3, 2u);
  }
}

- (void)beginRestorePersistedState
{
  v2 = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, v2, OS_LOG_TYPE_DEFAULT, "will restore persisted state", v3, 2u);
  }
}

- (void)endRestorePersistedState
{
  v2 = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, v2, OS_LOG_TYPE_DEFAULT, "did restore persisted state", v3, 2u);
  }
}

- (void)acceptingConnectionFromProcess:(int)a3
{
  v7 = *MEMORY[0x277D85DE8];
  v4 = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v6[0] = 67109120;
    v6[1] = a3;
    _os_log_impl(&dword_2258E5000, v4, OS_LOG_TYPE_DEFAULT, "Accepting connection from process %d", v6, 8u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)denyingRequestFromProcess:(int)a3
{
  v4 = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_ERROR))
  {
    [(_CNDonationAgentLogger *)a3 denyingRequestFromProcess:v4];
  }
}

- (void)acceptingDonations:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v20 count:16];
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
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        v11 = [(_CNDonationAgentLogger *)self log_t];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v13;
          v19 = v10;
          _os_log_impl(&dword_2258E5000, v11, OS_LOG_TYPE_DEFAULT, "Accepting donation: %{public}@", buf, 0xCu);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v4 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)preExpiredDonations:(id)a3
{
  v21 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  v17 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v14 objects:v20 count:16];
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
          objc_enumerationMutation(v4);
        }

        v10 = *(*(&v14 + 1) + 8 * v9);
        v11 = [(_CNDonationAgentLogger *)self log_t];
        if (os_log_type_enabled(v11, OS_LOG_TYPE_ERROR))
        {
          *buf = v13;
          v19 = v10;
          _os_log_error_impl(&dword_2258E5000, v11, OS_LOG_TYPE_ERROR, "Donation (%@) already expired. Asking the extension to renew. In the future, this value will not be persisted and you will not be asked to renew it.", buf, 0xCu);
        }

        ++v9;
      }

      while (v7 != v9);
      v7 = [v4 countByEnumeratingWithState:&v14 objects:v20 count:16];
    }

    while (v7);
  }

  v12 = *MEMORY[0x277D85DE8];
}

- (void)agentWillHandleRequest:(SEL)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a3);
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_2258E5000, v4, OS_LOG_TYPE_DEFAULT, "Will handle request: %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)agentDidHandleRequest:(SEL)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a3);
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_2258E5000, v4, OS_LOG_TYPE_DEFAULT, "Did handle request: %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)featureNotEnabled:(SEL)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_DEFAULT))
  {
    v5 = NSStringFromSelector(a3);
    v7 = 138412290;
    v8 = v5;
    _os_log_impl(&dword_2258E5000, v4, OS_LOG_TYPE_DEFAULT, "Could not handle request because feature not enabled: %@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)featureWillDisable
{
  v2 = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, v2, OS_LOG_TYPE_DEFAULT, "Will disable feature", v3, 2u);
  }
}

- (void)featureDidDisable
{
  v2 = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, v2, OS_LOG_TYPE_DEFAULT, "Did disable feature", v3, 2u);
  }
}

- (void)featureWillEnable
{
  v2 = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, v2, OS_LOG_TYPE_DEFAULT, "Will enable feature", v3, 2u);
  }
}

- (void)featureDidEnable
{
  v2 = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, v2, OS_LOG_TYPE_DEFAULT, "Did enable feature", v3, 2u);
  }
}

- (void)contactsChangedNotificationFoundName:(BOOL)a3 nameChanged:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  v11 = *MEMORY[0x277D85DE8];
  v6 = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(v6, OS_LOG_TYPE_INFO))
  {
    v8[0] = 67109376;
    v8[1] = v5;
    v9 = 1024;
    v10 = v4;
    _os_log_impl(&dword_2258E5000, v6, OS_LOG_TYPE_INFO, "Notified of contacts change. Found name: %u. Changed name: %u.", v8, 0xEu);
  }

  v7 = *MEMORY[0x277D85DE8];
}

- (void)contactsChangedNotificationEmailAddressesChanged:(BOOL)a3
{
  v3 = a3;
  v7 = *MEMORY[0x277D85DE8];
  v4 = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(v4, OS_LOG_TYPE_INFO))
  {
    v6[0] = 67109120;
    v6[1] = v3;
    _os_log_impl(&dword_2258E5000, v4, OS_LOG_TYPE_INFO, "Notified of contacts change. Email addresses changed: %u.", v6, 8u);
  }

  v5 = *MEMORY[0x277D85DE8];
}

- (void)willDiscoverExtensions
{
  v2 = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, v2, OS_LOG_TYPE_DEFAULT, "Will discover extensions", v3, 2u);
  }
}

- (void)didDiscoverExtension:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_2258E5000, v5, OS_LOG_TYPE_INFO, "Did discover extension: %{public}@", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)didDiscoverUnexpectedExtensionType:(id)a3
{
  v4 = a3;
  v5 = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [_CNDonationAgentLogger didDiscoverUnexpectedExtensionType:];
  }
}

- (void)didDiscoverExtensions
{
  v2 = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, v2, OS_LOG_TYPE_DEFAULT, "Did discover extensions", v3, 2u);
  }
}

- (void)didFailToDiscoverExtensions:(id)a3
{
  v4 = a3;
  v5 = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [_CNDonationAgentLogger didFailToDiscoverExtensions:];
  }
}

- (void)willLoadExtensionVersions
{
  v2 = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, v2, OS_LOG_TYPE_INFO, "Will load extension versions", v3, 2u);
  }
}

- (void)willSaveExtensionVersions
{
  v2 = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, v2, OS_LOG_TYPE_INFO, "Will save extension versions", v3, 2u);
  }
}

- (void)willRejectDonationIdentifier:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_2258E5000, v5, OS_LOG_TYPE_INFO, "Will reject donation with identifier '%{public}@'", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)didRejectDonationIdentifier:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138543362;
    v8 = v4;
    _os_log_impl(&dword_2258E5000, v5, OS_LOG_TYPE_INFO, "Did reject donation with identifier '%{public}@'", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)couldNotRejectUnknownDonationIdentifier:(id)a3
{
  v4 = a3;
  v5 = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [_CNDonationAgentLogger couldNotRejectUnknownDonationIdentifier:];
  }
}

- (void)couldNotRejectDonationIdentifier:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [_CNDonationAgentLogger couldNotRejectDonationIdentifier:error:];
  }
}

- (void)willRejectClusterIdentifier:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_2258E5000, v5, OS_LOG_TYPE_INFO, "Will reject donations with cluster identifier '%@'", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)didRejectClusterIdentifier:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_2258E5000, v5, OS_LOG_TYPE_INFO, "Will reject donations with cluster identifier '%@'", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)couldNotRejectUnknownClusterIdentifier:(id)a3
{
  v9 = *MEMORY[0x277D85DE8];
  v4 = a3;
  v5 = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_INFO))
  {
    v7 = 138412290;
    v8 = v4;
    _os_log_impl(&dword_2258E5000, v5, OS_LOG_TYPE_INFO, "Could not reject cluster with unknown identifier '%@'", &v7, 0xCu);
  }

  v6 = *MEMORY[0x277D85DE8];
}

- (void)couldNotRejectClusterIdentifier:(id)a3 error:(id)a4
{
  v6 = a3;
  v7 = a4;
  v8 = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_ERROR))
  {
    [_CNDonationAgentLogger couldNotRejectClusterIdentifier:error:];
  }
}

- (void)willListRejections
{
  v2 = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, v2, OS_LOG_TYPE_INFO, "Will list rejections", v3, 2u);
  }
}

- (void)didListRejections
{
  v2 = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, v2, OS_LOG_TYPE_INFO, "Did list rejections", v3, 2u);
  }
}

- (void)willRemoveAllRejections
{
  v2 = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, v2, OS_LOG_TYPE_INFO, "Will remove all rejections", v3, 2u);
  }
}

- (void)didRemoveAllRejections
{
  v2 = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(v2, OS_LOG_TYPE_INFO))
  {
    *v3 = 0;
    _os_log_impl(&dword_2258E5000, v2, OS_LOG_TYPE_INFO, "Did remove all rejections", v3, 2u);
  }
}

- (void)foundUnhashableValue:(id)a3
{
  v4 = a3;
  v5 = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [_CNDonationAgentLogger foundUnhashableValue:];
  }
}

- (void)couldNotRenewBecauseDonorError:(id)a3
{
  v4 = a3;
  v5 = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [_CNDonationAgentLogger couldNotRenewBecauseDonorError:];
  }
}

- (void)couldNotRenewBecauseLoadingError:(id)a3
{
  v4 = a3;
  v5 = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [_CNDonationAgentLogger couldNotRenewBecauseLoadingError:];
  }
}

- (void)couldNotRenewBecauseNotADonorExtension:(id)a3
{
  v4 = a3;
  v5 = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(v5, OS_LOG_TYPE_ERROR))
  {
    [_CNDonationAgentLogger couldNotRenewBecauseNotADonorExtension:];
  }
}

- (void)didRenewValue:(id)a3 untilDate:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v8 = [(_CNDonationAgentLogger *)self log_t];
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = [v6 origin];
    v10 = [v9 donationIdentifier];
    v12 = 138543618;
    v13 = v10;
    v14 = 2114;
    v15 = v7;
    _os_log_impl(&dword_2258E5000, v8, OS_LOG_TYPE_DEFAULT, "Donation %{public}@ has been renewed until %{public}@", &v12, 0x16u);
  }

  v11 = *MEMORY[0x277D85DE8];
}

- (void)willRenewValues:(id)a3 withDonor:(id)a4
{
  v28 = *MEMORY[0x277D85DE8];
  v6 = a3;
  v7 = a4;
  v19 = 0u;
  v20 = 0u;
  v21 = 0u;
  v22 = 0u;
  v8 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
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
          objc_enumerationMutation(v6);
        }

        v13 = *(*(&v19 + 1) + 8 * v12);
        v14 = [(_CNDonationAgentLogger *)self log_t];
        if (os_log_type_enabled(v14, OS_LOG_TYPE_DEFAULT))
        {
          v15 = [v13 origin];
          v16 = [v15 donationIdentifier];
          *buf = v18;
          v24 = v16;
          v25 = 2114;
          v26 = v7;
          _os_log_impl(&dword_2258E5000, v14, OS_LOG_TYPE_DEFAULT, "Will renew donation %{public}@ with donor %{public}@", buf, 0x16u);
        }

        ++v12;
      }

      while (v10 != v12);
      v10 = [v6 countByEnumeratingWithState:&v19 objects:v27 count:16];
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