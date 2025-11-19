@interface CSTestingSupportWidgetProvider
- (CSTestingSupportWidgetProvider)init;
- (id)newWidgetGroupViewControllerWithSettings:(WGWidgetListSettings)a3;
- (id)newWidgetListViewControllerWithSettings:(WGWidgetListSettings)a3;
@end

@implementation CSTestingSupportWidgetProvider

- (CSTestingSupportWidgetProvider)init
{
  v6.receiver = self;
  v6.super_class = CSTestingSupportWidgetProvider;
  v2 = [(CSTestingSupportWidgetProvider *)&v6 init];
  if (v2)
  {
    v3 = objc_alloc_init(MEMORY[0x277D7BC30]);
    widgetDiscoveryController = v2->_widgetDiscoveryController;
    v2->_widgetDiscoveryController = v3;

    [(WGWidgetDiscoveryController *)v2->_widgetDiscoveryController setDelegate:v2];
    [(WGWidgetDiscoveryController *)v2->_widgetDiscoveryController beginDiscovery];
  }

  return v2;
}

- (id)newWidgetGroupViewControllerWithSettings:(WGWidgetListSettings)a3
{
  v3 = *&a3.var1;
  var0 = a3.var0;
  v6 = objc_alloc(MEMORY[0x277D7BC38]);
  widgetDiscoveryController = self->_widgetDiscoveryController;

  return [v6 initWithWidgetDiscoveryController:widgetDiscoveryController listSettings:{var0, v3}];
}

- (id)newWidgetListViewControllerWithSettings:(WGWidgetListSettings)a3
{
  v4 = objc_alloc(MEMORY[0x277D7BC28]);
  widgetDiscoveryController = self->_widgetDiscoveryController;

  return [v4 initWithWidgetDiscoveryController:widgetDiscoveryController];
}

@end