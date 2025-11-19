intptr_t sub_10000128C(uint64_t a1)
{
  v10 = 0u;
  v11 = 0u;
  v12 = 0u;
  v13 = 0u;
  v2 = CLGetPipelinedCache();
  v3 = [v2 countByEnumeratingWithState:&v10 objects:v16 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v11;
    do
    {
      for (i = 0; i != v4; i = i + 1)
      {
        if (*v11 != v5)
        {
          objc_enumerationMutation(v2);
        }

        v7 = *(a1 + 32);
        if (os_log_type_enabled(v7, OS_LOG_TYPE_DEFAULT))
        {
          v8 = *(*(&v10 + 1) + 8 * i);
          *buf = 138412290;
          v15 = v8;
          _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "#diagnosticExtension adding pipelined tiles at %@", buf, 0xCu);
        }
      }

      v4 = [v2 countByEnumeratingWithState:&v10 objects:v16 count:16];
    }

    while (v4);
  }

  return dispatch_semaphore_signal(*(a1 + 40));
}