@interface THFrozenThreadNetwork(Keychain)
- (void)keyChainItemRepresentationForFrozenThreadNetworkAddOperation;
@end

@implementation THFrozenThreadNetwork(Keychain)

- (void)keyChainItemRepresentationForFrozenThreadNetworkAddOperation
{
  v1 = 136315138;
  v2 = "[THFrozenThreadNetwork(Keychain) keyChainItemRepresentationForFrozenThreadNetworkAddOperation]";
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%s : Error: unable to form add operation due to missing data", &v1, 0xCu);
}

@end