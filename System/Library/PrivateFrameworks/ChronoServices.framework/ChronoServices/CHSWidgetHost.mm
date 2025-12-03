@interface CHSWidgetHost
+ (id)new;
- (CHSWidgetHost)init;
- (CHSWidgetHost)initWithIdentifier:(id)identifier;
- (CHSWidgetHost)initWithIdentifier:(id)identifier configuration:(id)configuration activationState:(unint64_t)state connection:(id)connection;
- (CHSWidgetHost)initWithIdentifier:(id)identifier configuration:(id)configuration active:(BOOL)active;
- (CHSWidgetHost)initWithInactiveIdentifier:(id)identifier;
- (id)_connectionCopy;
- (id)_initWithHost:(id)host;
- (void)_connectionCreateOrUpdateConfigurations;
- (void)_connectionRemoveHost;
- (void)_connectionUpdateActivationState;
- (void)activate;
- (void)appendDescriptionToFormatter:(id)formatter;
- (void)deactivate;
- (void)dealloc;
- (void)invalidate;
- (void)setConfiguration:(id)configuration;
@end

@implementation CHSWidgetHost

+ (id)new
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CHSWidgetHost.m" lineNumber:35 description:@"use initWithIdentifier:"];

  return 0;
}

- (CHSWidgetHost)init
{
  currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
  [currentHandler handleFailureInMethod:a2 object:self file:@"CHSWidgetHost.m" lineNumber:40 description:@"use initWithIdentifier:"];

  return 0;
}

- (CHSWidgetHost)initWithInactiveIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[CHSChronoServicesConnection sharedInstance];
  v6 = [(CHSWidgetHost *)self initWithIdentifier:identifierCopy configuration:0 activationState:0 connection:v5];

  return v6;
}

- (CHSWidgetHost)initWithIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = +[CHSChronoServicesConnection sharedInstance];
  v6 = [(CHSWidgetHost *)self initWithIdentifier:identifierCopy configuration:0 activationState:1 connection:v5];

  return v6;
}

- (CHSWidgetHost)initWithIdentifier:(id)identifier configuration:(id)configuration active:(BOOL)active
{
  activeCopy = active;
  identifierCopy = identifier;
  configurationCopy = configuration;
  v10 = +[CHSChronoServicesConnection sharedInstance];
  v11 = [(CHSWidgetHost *)self initWithIdentifier:identifierCopy configuration:configurationCopy activationState:activeCopy connection:v10];

  return v11;
}

- (CHSWidgetHost)initWithIdentifier:(id)identifier configuration:(id)configuration activationState:(unint64_t)state connection:(id)connection
{
  v34 = *MEMORY[0x1E69E9840];
  identifierCopy = identifier;
  configurationCopy = configuration;
  connectionCopy = connection;
  v29.receiver = self;
  v29.super_class = CHSWidgetHost;
  v13 = [(CHSWidgetHost *)&v29 init];
  v14 = v13;
  if (v13)
  {
    v13->_activationState = state;
    objc_storeStrong(&v13->_connection, connection);
    v15 = [identifierCopy copy];
    identifier = v14->_identifier;
    v14->_identifier = v15;

    v17 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@-%p", identifierCopy, v14];
    loggingIdentifier = v14->_loggingIdentifier;
    v14->_loggingIdentifier = v17;

    v19 = [configurationCopy copy];
    configuration = v14->_configuration;
    v14->_configuration = v19;

    v21 = CHSLogWidgetHosts();
    if (os_log_type_enabled(v21, OS_LOG_TYPE_DEFAULT))
    {
      v22 = v14->_loggingIdentifier;
      *buf = 138543618;
      v31 = v22;
      v32 = 2114;
      v33 = v14;
      _os_log_impl(&dword_195EB2000, v21, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Created: %{public}@", buf, 0x16u);
    }

    if (configurationCopy)
    {
      [(CHSWidgetHost *)v14 _connectionCreateOrUpdateConfigurations];
    }

    else
    {
      v23 = [CHSWidgetConfiguration alloc];
      v24 = objc_alloc_init(CHSWidgetMetricsSpecification);
      v25 = [(CHSWidgetConfiguration *)v23 initWithContainerDescriptors:MEMORY[0x1E695E0F0] metricsSpecification:v24];
      v26 = v14->_configuration;
      v14->_configuration = v25;
    }
  }

  v27 = *MEMORY[0x1E69E9840];
  return v14;
}

- (id)_initWithHost:(id)host
{
  hostCopy = host;
  v8.receiver = self;
  v8.super_class = CHSWidgetHost;
  v5 = [(CHSWidgetHost *)&v8 init];
  v6 = v5;
  if (v5)
  {
    objc_storeStrong(&v5->_identifier, hostCopy[1]);
    objc_storeStrong(&v6->_loggingIdentifier, hostCopy[2]);
    objc_storeStrong(&v6->_connection, hostCopy[3]);
    v6->_invalid = *(hostCopy + 40);
    v6->_activationState = hostCopy[4];
    objc_storeStrong(&v6->_configuration, hostCopy[6]);
  }

  return v6;
}

- (void)dealloc
{
  if (!self->_invalid)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CHSWidgetHost.m" lineNumber:106 description:@"CHSWidgetHost must be invalidated before it is deallocated"];
  }

  v5.receiver = self;
  v5.super_class = CHSWidgetHost;
  [(CHSWidgetHost *)&v5 dealloc];
}

- (void)setConfiguration:(id)configuration
{
  v16 = *MEMORY[0x1E69E9840];
  configurationCopy = configuration;
  if (self->_invalid)
  {
    currentHandler = [MEMORY[0x1E696AAA8] currentHandler];
    [currentHandler handleFailureInMethod:a2 object:self file:@"CHSWidgetHost.m" lineNumber:113 description:@"CHSWidgetHost is invalid"];
  }

  if (![(CHSWidgetConfiguration *)self->_configuration isEqual:configurationCopy])
  {
    v6 = [configurationCopy copy];
    configuration = self->_configuration;
    self->_configuration = v6;

    v8 = CHSLogWidgetHosts();
    if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
    {
      loggingIdentifier = self->_loggingIdentifier;
      v12 = 138543618;
      v13 = loggingIdentifier;
      v14 = 2114;
      selfCopy = self;
      _os_log_impl(&dword_195EB2000, v8, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Configuration changed: %{public}@", &v12, 0x16u);
    }

    [(CHSWidgetHost *)self _connectionCreateOrUpdateConfigurations];
  }

  v10 = *MEMORY[0x1E69E9840];
}

- (void)activate
{
  v10 = *MEMORY[0x1E69E9840];
  if (!self->_invalid)
  {
    v3 = CHSLogWidgetHosts();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      loggingIdentifier = self->_loggingIdentifier;
      v6 = 138543618;
      v7 = loggingIdentifier;
      v8 = 2114;
      selfCopy = self;
      _os_log_impl(&dword_195EB2000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Activated: %{public}@", &v6, 0x16u);
    }

    self->_activationState = 1;
    [(CHSWidgetHost *)self _connectionUpdateActivationState];
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)deactivate
{
  v10 = *MEMORY[0x1E69E9840];
  if (!self->_invalid)
  {
    v3 = CHSLogWidgetHosts();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      loggingIdentifier = self->_loggingIdentifier;
      v6 = 138543618;
      v7 = loggingIdentifier;
      v8 = 2114;
      selfCopy = self;
      _os_log_impl(&dword_195EB2000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Deactivated: %{public}@", &v6, 0x16u);
    }

    self->_activationState = 0;
    [(CHSWidgetHost *)self _connectionUpdateActivationState];
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (void)invalidate
{
  v10 = *MEMORY[0x1E69E9840];
  if (!self->_invalid)
  {
    self->_invalid = 1;
    v3 = CHSLogWidgetHosts();
    if (os_log_type_enabled(v3, OS_LOG_TYPE_DEFAULT))
    {
      loggingIdentifier = self->_loggingIdentifier;
      v6 = 138543618;
      v7 = loggingIdentifier;
      v8 = 2114;
      selfCopy = self;
      _os_log_impl(&dword_195EB2000, v3, OS_LOG_TYPE_DEFAULT, "[%{public}@]: Invalidated: %{public}@", &v6, 0x16u);
    }

    self->_activationState = 0;
    [(CHSWidgetHost *)self _connectionRemoveHost];
  }

  v5 = *MEMORY[0x1E69E9840];
}

- (id)_connectionCopy
{
  v2 = [[_CHSWidgetHostForConnection alloc] initWithIdentifier:self->_identifier configuration:self->_configuration activationState:self->_activationState];

  return v2;
}

- (void)appendDescriptionToFormatter:(id)formatter
{
  formatterCopy = formatter;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v6[2] = __46__CHSWidgetHost_appendDescriptionToFormatter___block_invoke;
  v6[3] = &unk_1E7453000;
  v7 = formatterCopy;
  selfCopy = self;
  v5 = formatterCopy;
  [v5 appendProem:0 block:v6];
}

void __46__CHSWidgetHost_appendDescriptionToFormatter___block_invoke(uint64_t a1)
{
  v2 = [*(a1 + 32) appendObject:*(*(a1 + 40) + 8) withName:@"identifier"];
  if (*(*(a1 + 40) + 32))
  {
    v3 = @"activated";
  }

  else
  {
    v3 = @"deactivated";
  }

  v4 = [*(a1 + 32) appendObject:v3 withName:@"activationState"];
  v5 = *(a1 + 32);
  v7 = [*(*(a1 + 40) + 48) succinctDescription];
  v6 = [v5 appendObject:? withName:?];
}

- (void)_connectionRemoveHost
{
  connection = self->_connection;
  _connectionCopy = [(CHSWidgetHost *)self _connectionCopy];
  [(CHSChronoServicesConnection *)connection removeWidgetHost:?];
}

- (void)_connectionCreateOrUpdateConfigurations
{
  connection = self->_connection;
  _connectionCopy = [(CHSWidgetHost *)self _connectionCopy];
  [(CHSChronoServicesConnection *)connection updateWidgetHostConfigurations:?];
}

- (void)_connectionUpdateActivationState
{
  connection = self->_connection;
  _connectionCopy = [(CHSWidgetHost *)self _connectionCopy];
  [(CHSChronoServicesConnection *)connection updateWidgetHostActivationState:?];
}

@end