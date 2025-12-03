@interface MapsSuggestionsRealWalletConnector
- (BOOL)expressSupportedByPass:(id)pass;
- (MapsSuggestionsRealWalletConnector)init;
- (MapsSuggestionsWalletConnectorDelegate)delegate;
- (NSString)uniqueName;
- (id)defaultPass;
- (id)supportedTransitIdsForPass:(id)pass;
- (int64_t)paymentNetworkIdentiferForPass:(id)pass;
- (void)startListeningForChanges;
- (void)stopListeningForChanges;
@end

@implementation MapsSuggestionsRealWalletConnector

- (id)defaultPass
{
  v2 = [(PKPassLibrary *)self->_passLibrary defaultPaymentPassesWithRemotePasses:0];
  if ([v2 count])
  {
    firstObject = [v2 firstObject];
  }

  else
  {
    firstObject = 0;
  }

  return firstObject;
}

- (MapsSuggestionsRealWalletConnector)init
{
  v10.receiver = self;
  v10.super_class = MapsSuggestionsRealWalletConnector;
  v2 = [(MapsSuggestionsRealWalletConnector *)&v10 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x1E69B8A58]);
    passLibrary = v2->_passLibrary;
    v2->_passLibrary = v3;

    v5 = objc_alloc_init(MEMORY[0x1E69B8DB8]);
    paymentService = v2->_paymentService;
    v2->_paymentService = v5;

    v7 = objc_alloc_init(_RealPKPassFlightFieldReader);
    fieldReader = v2->_fieldReader;
    v2->_fieldReader = v7;
  }

  return v2;
}

- (void)startListeningForChanges
{
  objc_initWeak(&location, self);
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  v4 = *MEMORY[0x1E69BBBD8];
  passLibrary = self->_passLibrary;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 3221225472;
  v7[2] = __62__MapsSuggestionsRealWalletConnector_startListeningForChanges__block_invoke;
  v7[3] = &unk_1E8203C58;
  objc_copyWeak(&v8, &location);
  v7[4] = self;
  v6 = [defaultCenter addObserverForName:v4 object:passLibrary queue:0 usingBlock:v7];

  objc_destroyWeak(&v8);
  objc_destroyWeak(&location);
}

void __62__MapsSuggestionsRealWalletConnector_startListeningForChanges__block_invoke(uint64_t a1, void *a2)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  if (!WeakRetained)
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446722;
      v9 = "MapsSuggestionsRealWalletConnector.mm";
      v10 = 1026;
      v11 = 65;
      v12 = 2082;
      v13 = "[MapsSuggestionsRealWalletConnector startListeningForChanges]_block_invoke";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongSelf went away in %{public}s", &v8, 0x1Cu);
    }

    v6 = v7;
    goto LABEL_10;
  }

  v5 = [*(a1 + 32) delegate];
  v6 = v5;
  if (!v5)
  {
    v7 = GEOFindOrCreateLog();
    if (os_log_type_enabled(v7, OS_LOG_TYPE_ERROR))
    {
      v8 = 136446722;
      v9 = "MapsSuggestionsRealWalletConnector.mm";
      v10 = 1026;
      v11 = 66;
      v12 = 2082;
      v13 = "[MapsSuggestionsRealWalletConnector startListeningForChanges]_block_invoke";
      _os_log_impl(&dword_1C5126000, v7, OS_LOG_TYPE_ERROR, "%{public}s:%{public}d: strongDelegate went away in %{public}s", &v8, 0x1Cu);
    }

LABEL_10:
    goto LABEL_11;
  }

  [v5 passKitDidChange:WeakRetained];
LABEL_11:
}

- (void)stopListeningForChanges
{
  defaultCenter = [MEMORY[0x1E696AD88] defaultCenter];
  [defaultCenter removeObserver:self name:*MEMORY[0x1E69BBBD8] object:0];
}

- (BOOL)expressSupportedByPass:(id)pass
{
  v19 = *MEMORY[0x1E69E9840];
  passCopy = pass;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  devicePaymentApplications = [passCopy devicePaymentApplications];
  v5 = [devicePaymentApplications countByEnumeratingWithState:&v12 objects:v18 count:16];
  if (v5)
  {
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(devicePaymentApplications);
        }

        if ([*(*(&v12 + 1) + 8 * i) supportsExpress])
        {
          v9 = GEOFindOrCreateLog();
          if (os_log_type_enabled(v9, OS_LOG_TYPE_DEBUG))
          {
            organizationName = [passCopy organizationName];
            *buf = 138412290;
            v17 = organizationName;
            _os_log_impl(&dword_1C5126000, v9, OS_LOG_TYPE_DEBUG, "%@ card supports express transit", buf, 0xCu);
          }

          v8 = 1;
          goto LABEL_15;
        }
      }

      v5 = [devicePaymentApplications countByEnumeratingWithState:&v12 objects:v18 count:16];
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  devicePaymentApplications = GEOFindOrCreateLog();
  if (os_log_type_enabled(devicePaymentApplications, OS_LOG_TYPE_DEBUG))
  {
    *buf = 0;
    _os_log_impl(&dword_1C5126000, devicePaymentApplications, OS_LOG_TYPE_DEBUG, "Found no paymentApplication on the pass that supports express transit", buf, 2u);
  }

  v8 = 0;
LABEL_15:

  return v8;
}

- (id)supportedTransitIdsForPass:(id)pass
{
  devicePrimaryPaymentApplication = [pass devicePrimaryPaymentApplication];
  supportedTransitNetworkIdentifiers = [devicePrimaryPaymentApplication supportedTransitNetworkIdentifiers];
  v5 = [supportedTransitNetworkIdentifiers copy];

  return v5;
}

- (int64_t)paymentNetworkIdentiferForPass:(id)pass
{
  devicePrimaryPaymentApplication = [pass devicePrimaryPaymentApplication];
  paymentNetworkIdentifier = [devicePrimaryPaymentApplication paymentNetworkIdentifier];

  return paymentNetworkIdentifier;
}

- (NSString)uniqueName
{
  v2 = objc_opt_class();

  return [v2 description];
}

- (MapsSuggestionsWalletConnectorDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->delegate);

  return WeakRetained;
}

@end