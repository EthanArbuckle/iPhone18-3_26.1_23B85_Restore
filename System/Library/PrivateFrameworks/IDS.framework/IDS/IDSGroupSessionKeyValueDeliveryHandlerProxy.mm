@interface IDSGroupSessionKeyValueDeliveryHandlerProxy
- (IDSGroupSessionKeyValueDeliveryHandler)handler;
- (IDSGroupSessionKeyValueDeliveryHandlerProxy)initWithHandler:(id)handler;
- (void)handleGroupSessionKeyValues:(id)values;
@end

@implementation IDSGroupSessionKeyValueDeliveryHandlerProxy

- (IDSGroupSessionKeyValueDeliveryHandlerProxy)initWithHandler:(id)handler
{
  handlerCopy = handler;
  v10.receiver = self;
  v10.super_class = IDSGroupSessionKeyValueDeliveryHandlerProxy;
  v5 = [(IDSGroupSessionKeyValueDeliveryHandlerProxy *)&v10 init];
  v6 = v5;
  if (v5)
  {
    objc_storeWeak(&v5->_handler, handlerCopy);
    uUID = [MEMORY[0x1E696AFB0] UUID];
    handlerUUID = v6->_handlerUUID;
    v6->_handlerUUID = uUID;
  }

  return v6;
}

- (void)handleGroupSessionKeyValues:(id)values
{
  v52 = *MEMORY[0x1E69E9840];
  valuesCopy = values;
  v4 = 0x1E695D000uLL;
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();
  groupSessionKeyValueDelivery = [MEMORY[0x1E69A5270] GroupSessionKeyValueDelivery];
  v7 = groupSessionKeyValueDelivery;
  if (isKindOfClass)
  {
    if (os_log_type_enabled(groupSessionKeyValueDelivery, OS_LOG_TYPE_DEFAULT))
    {
      *buf = 138412290;
      v45 = valuesCopy;
      _os_log_impl(&dword_1959FF000, v7, OS_LOG_TYPE_DEFAULT, "handleGroupSessionKeyValues: received dictionary %@", buf, 0xCu);
    }

    v42 = 0u;
    v43 = 0u;
    v40 = 0u;
    v41 = 0u;
    v7 = valuesCopy;
    v8 = [v7 countByEnumeratingWithState:&v40 objects:v51 count:16];
    if (v8)
    {
      v9 = v8;
      v29 = valuesCopy;
      v10 = *v41;
      v30 = *v41;
      v31 = v7;
      do
      {
        v11 = 0;
        v32 = v9;
        do
        {
          if (*v41 != v10)
          {
            objc_enumerationMutation(v7);
          }

          v12 = *(*(&v40 + 1) + 8 * v11);
          v13 = [v7 objectForKeyedSubscript:v12];
          v14 = *(v4 + 3872);
          objc_opt_class();
          v34 = v13;
          LOBYTE(v13) = objc_opt_isKindOfClass();
          groupSessionKeyValueDelivery2 = [MEMORY[0x1E69A5270] GroupSessionKeyValueDelivery];
          v16 = groupSessionKeyValueDelivery2;
          if (v13)
          {
            v33 = v11;
            if (os_log_type_enabled(groupSessionKeyValueDelivery2, OS_LOG_TYPE_DEFAULT))
            {
              *buf = 138412290;
              v45 = v12;
              _os_log_impl(&dword_1959FF000, v16, OS_LOG_TYPE_DEFAULT, "handleGroupSessionKeyValues: key %@", buf, 0xCu);
            }

            v38 = 0u;
            v39 = 0u;
            v36 = 0u;
            v37 = 0u;
            v16 = v34;
            v17 = [v16 countByEnumeratingWithState:&v36 objects:v50 count:16];
            if (v17)
            {
              v18 = v17;
              v19 = *v37;
              do
              {
                for (i = 0; i != v18; ++i)
                {
                  if (*v37 != v19)
                  {
                    objc_enumerationMutation(v16);
                  }

                  v21 = *(*(&v36 + 1) + 8 * i);
                  objc_opt_class();
                  v22 = objc_opt_isKindOfClass();
                  groupSessionKeyValueDelivery3 = [MEMORY[0x1E69A5270] GroupSessionKeyValueDelivery];
                  v24 = groupSessionKeyValueDelivery3;
                  if (v22)
                  {
                    if (os_log_type_enabled(groupSessionKeyValueDelivery3, OS_LOG_TYPE_DEFAULT))
                    {
                      *buf = 138412546;
                      v45 = v12;
                      v46 = 2112;
                      v47 = v21;
                      _os_log_impl(&dword_1959FF000, v24, OS_LOG_TYPE_DEFAULT, "handleGroupSessionKeyValues: key:%@ participantID:%@", buf, 0x16u);
                    }

                    v24 = [v16 objectForKeyedSubscript:v21];
                    objc_opt_class();
                    v25 = objc_opt_isKindOfClass();
                    groupSessionKeyValueDelivery4 = [MEMORY[0x1E69A5270] GroupSessionKeyValueDelivery];
                    WeakRetained = groupSessionKeyValueDelivery4;
                    if (v25)
                    {
                      if (os_log_type_enabled(groupSessionKeyValueDelivery4, OS_LOG_TYPE_DEFAULT))
                      {
                        *buf = 138412802;
                        v45 = v12;
                        v46 = 2112;
                        v47 = v21;
                        v48 = 2112;
                        v49 = v24;
                        _os_log_impl(&dword_1959FF000, WeakRetained, OS_LOG_TYPE_DEFAULT, "handleGroupSessionKeyValues: key:%@ participantID:%@ data:%@", buf, 0x20u);
                      }

                      WeakRetained = objc_loadWeakRetained(&self->_handler);
                      -[NSObject handleGroupSessionValue:forKey:participant:](WeakRetained, "handleGroupSessionValue:forKey:participant:", v24, [v12 intValue], objc_msgSend(v21, "unsignedLongLongValue"));
                    }

                    else if (os_log_type_enabled(groupSessionKeyValueDelivery4, OS_LOG_TYPE_ERROR))
                    {
                      *buf = 138412802;
                      v45 = v12;
                      v46 = 2112;
                      v47 = v21;
                      v48 = 2112;
                      v49 = v24;
                      _os_log_error_impl(&dword_1959FF000, WeakRetained, OS_LOG_TYPE_ERROR, "handleGroupSessionKeyValues: invalid value for key:%@ participantID:%@ value:%@", buf, 0x20u);
                    }
                  }

                  else if (os_log_type_enabled(groupSessionKeyValueDelivery3, OS_LOG_TYPE_ERROR))
                  {
                    *buf = 138412546;
                    v45 = v12;
                    v46 = 2112;
                    v47 = v21;
                    _os_log_error_impl(&dword_1959FF000, v24, OS_LOG_TYPE_ERROR, "handleGroupSessionKeyValues: invalid participantID for key:%@ participantID:%@", buf, 0x16u);
                  }
                }

                v18 = [v16 countByEnumeratingWithState:&v36 objects:v50 count:16];
              }

              while (v18);
              v4 = 0x1E695D000;
              v10 = v30;
              v7 = v31;
              v9 = v32;
            }

            v11 = v33;
          }

          else if (os_log_type_enabled(groupSessionKeyValueDelivery2, OS_LOG_TYPE_ERROR))
          {
            *buf = 138412546;
            v45 = v12;
            v46 = 2112;
            v47 = v34;
            _os_log_error_impl(&dword_1959FF000, v16, OS_LOG_TYPE_ERROR, "handleGroupSessionKeyValues: remoteParticipantIDToData is not a dictionary for key:%@ data: %@", buf, 0x16u);
          }

          ++v11;
        }

        while (v11 != v9);
        v9 = [v7 countByEnumeratingWithState:&v40 objects:v51 count:16];
      }

      while (v9);
      valuesCopy = v29;
    }
  }

  else if (os_log_type_enabled(groupSessionKeyValueDelivery, OS_LOG_TYPE_ERROR))
  {
    sub_195B3D380(valuesCopy, v7);
  }

  v28 = *MEMORY[0x1E69E9840];
}

- (IDSGroupSessionKeyValueDeliveryHandler)handler
{
  WeakRetained = objc_loadWeakRetained(&self->_handler);

  return WeakRetained;
}

@end