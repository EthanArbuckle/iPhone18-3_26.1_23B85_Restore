@interface _CHSWidgetConfigurationHost
- (CHSWidgetMetricsSpecification)metricsSpecification;
- (NSArray)widgetConfigurations;
- (NSString)identifier;
- (_CHSWidgetConfigurationHost)initWithIdentifier:(id)a3 configurations:(id)a4 metricsSpecification:(id)a5;
- (id)copyWithZone:(_NSZone *)a3;
- (id)widgetConfigurationsForApplicationContainerBundleIdentifier:(id)a3;
@end

@implementation _CHSWidgetConfigurationHost

- (_CHSWidgetConfigurationHost)initWithIdentifier:(id)a3 configurations:(id)a4 metricsSpecification:(id)a5
{
  v8 = a3;
  v9 = a4;
  v10 = a5;
  v19.receiver = self;
  v19.super_class = _CHSWidgetConfigurationHost;
  v11 = [(_CHSWidgetConfigurationHost *)&v19 init];
  if (v11)
  {
    v12 = [v8 copy];
    identifier = v11->_identifier;
    v11->_identifier = v12;

    v14 = [v9 copy];
    configurations = v11->_configurations;
    v11->_configurations = v14;

    v16 = [v10 copy];
    metricsSpecification = v11->_metricsSpecification;
    v11->_metricsSpecification = v16;
  }

  return v11;
}

- (NSString)identifier
{
  v2 = [(NSString *)self->_identifier copy];

  return v2;
}

- (NSArray)widgetConfigurations
{
  v2 = [(NSArray *)self->_configurations copy];

  return v2;
}

- (id)widgetConfigurationsForApplicationContainerBundleIdentifier:(id)a3
{
  v4 = a3;
  configurations = self->_configurations;
  v6 = MEMORY[0x1E696AE18];
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 3221225472;
  v11[2] = __91___CHSWidgetConfigurationHost_widgetConfigurationsForApplicationContainerBundleIdentifier___block_invoke;
  v11[3] = &unk_1E7453E78;
  v7 = v4;
  v12 = v7;
  v8 = [v6 predicateWithBlock:v11];
  v9 = [(NSArray *)configurations filteredArrayUsingPredicate:v8];

  return v9;
}

- (CHSWidgetMetricsSpecification)metricsSpecification
{
  v2 = [(CHSWidgetMetricsSpecification *)self->_metricsSpecification copy];

  return v2;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [_CHSWidgetConfigurationHost alloc];
  identifier = self->_identifier;
  configurations = self->_configurations;
  metricsSpecification = self->_metricsSpecification;

  return [(_CHSWidgetConfigurationHost *)v4 initWithIdentifier:identifier configurations:configurations metricsSpecification:metricsSpecification];
}

@end