void sub_100000C20(uint64_t a1, NSObject *a2)
{
  v2 = 138412290;
  v3 = a1;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "OfficeSpotlightImporter: In updateAttributes, contentURL: %@", &v2, 0xCu);
}

void sub_100000C98(void *a1, NSObject *a2)
{
  v3 = [a1 displayName];
  v4 = 138412290;
  v5 = v3;
  _os_log_debug_impl(&_mh_execute_header, a2, OS_LOG_TYPE_DEBUG, "OfficeSpotlightImporter: In updateAttributes, displayName: %@", &v4, 0xCu);
}

void sub_100000D34(uint64_t *a1, NSObject *a2)
{
  v2 = *a1;
  v3 = 138412546;
  v4 = 0;
  v5 = 2112;
  v6 = v2;
  _os_log_error_impl(&_mh_execute_header, a2, OS_LOG_TYPE_ERROR, "OfficeSpotlightImporter: In updateAttributes, dictionary: %@, *error: %@", &v3, 0x16u);
}

void sub_100000DBC(uint64_t a1, uint64_t *a2)
{
  v2 = *a2;
  v3 = 138412546;
  v4 = a1;
  v5 = 2112;
  v6 = v2;
  _os_log_error_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_ERROR, "Could not extract metadata from %@: error %@", &v3, 0x16u);
}