void sub_1B7CEC7D4(uint64_t a1, const char *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v3, v4, "ASSERTION FAILED: Condition is unexpectedly true: %s in %s at line %d [%@]", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEC888(uint64_t a1, const char *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v3, v4, "ASSERTION FAILED: Condition is unexpectedly true: %s in %s at line %d [%@]", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEC93C(uint64_t a1, const char *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v3, v4, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEC9F0(uint64_t a1, const char *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v3, v4, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v5, v6, v7, v8, 2u);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7CECACC(char a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = @"OFF";
  if (a1)
  {
    v2 = @"ON";
  }

  v4 = 138412290;
  v5 = v2;
  _os_log_fault_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_FAULT, "This method should not be called %@ the notification queue because it may lead to long blocking of other requests.", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void sub_1B7CECB70(void *a1, char *a2, uint64_t a3)
{
  v6 = *MEMORY[0x1E69E9840];
  objc_msgSend_changeType(a1, a2, a3);
  sub_1B7AE0A98();
  _os_log_debug_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_DEBUG, "Not generating notification for participantChangeItem with changeType: %lld", v5, 0xCu);
  v4 = *MEMORY[0x1E69E9840];
}

void sub_1B7CECBF8(void *a1, uint8_t *buf, os_log_t log)
{
  *buf = 138412290;
  *(buf + 4) = a1;
  _os_log_debug_impl(&dword_1B7AD5000, log, OS_LOG_TYPE_DEBUG, "Not generating notification because chat %@ doesn't have scheduled messages in it", buf, 0xCu);
}

void sub_1B7CECC50(void *a1, char *a2, uint64_t a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_chatRecord(a1, a2, a3);
  sub_1B7AE0A98();
  _os_log_error_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch chat for chatRecord: %@", v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B7CECCE8()
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1B7AE0A98();
  _os_log_debug_impl(&dword_1B7AD5000, v0, OS_LOG_TYPE_DEBUG, "Not generating notification for participantChangeItem from myself: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void sub_1B7CECD5C()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B7AE0A98();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B7CECDCC(uint64_t a1, const char *a2, NSObject *a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_identifier(*(a1 + 32), a2, a3);
  sub_1B7AE0A98();
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_1B7AD5000, a3, OS_LOG_TYPE_ERROR, "Error posting notification request %@. Error: %@", v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1B7CECE7C(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_1B7AD5000, log, OS_LOG_TYPE_ERROR, "Error updating edited message content for notification request %@. Error: %@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void sub_1B7CECF08()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B7AE0A98();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B7CECF78()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B7AE0A98();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B7CED010()
{
  sub_1B7AE0AA4();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B7CED04C()
{
  sub_1B7AE0AA4();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B7CED0B0()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B7AE0A98();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B7CED120()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B7AE0A98();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B7CED190(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1B7AD5000, log, OS_LOG_TYPE_ERROR, "Could not create emoji image text attachment for attachment record", buf, 2u);
}

void sub_1B7CED1D0()
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1B7AE0A98();
  _os_log_fault_impl(&dword_1B7AD5000, v0, OS_LOG_TYPE_FAULT, "Caught exception generating notification %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void sub_1B7CED244()
{
  sub_1B7AE0AA4();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B7CED280()
{
  sub_1B7AE0AA4();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B7CED2BC()
{
  sub_1B7AE0AA4();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B7CED2F8()
{
  sub_1B7AE0AA4();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B7CED334()
{
  sub_1B7AE0AA4();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B7CED370(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, "Class getSOSUtilitiesClass(void)_block_invoke");
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v3, v6, v5, @"IMDNotificationsController.m", 101, @"Unable to find class %s", "SOSUtilities");

  __break(1u);
}

void sub_1B7CED3EC(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, "void *SOSLibrary(void)");
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v4, v7, v6, @"IMDNotificationsController.m", 100, @"%s", *a1);

  __break(1u);
}

void sub_1B7CED46C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, "Class getSMMessageClass(void)_block_invoke");
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v3, v6, v5, @"IMDNotificationsController.m", 88, @"Unable to find class %s", "SMMessage");

  __break(1u);
}

void sub_1B7CED4E8(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, "void *SafetyMonitorLibrary(void)");
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v4, v7, v6, @"IMDNotificationsController.m", 87, @"%s", *a1);

  __break(1u);
}

void sub_1B7CED568(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7CED618(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7CED6C8(uint64_t a1, const char *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  IMDSqlOperationErrorDescription(a1, a2, a3);
  sub_1B7AE0AB0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  v8 = *MEMORY[0x1E69E9840];
}

BOOL sub_1B7CED74C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"EXPLAIN QUERY PLAN %@", a1);
  *a2 = MEMORY[0x1E69E9820];
  *(a2 + 8) = 3221225472;
  *(a2 + 16) = sub_1B7B1D23C;
  *(a2 + 24) = &unk_1E7CB6FD0;
  *(a2 + 32) = v7;
  *(a2 + 40) = a3;
  return _IMDSqlOperationRunQuery(a3, v7, a4, a2);
}

void sub_1B7CED7FC(uint64_t a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 32);
  v4 = 138543362;
  v5 = v2;
  _os_log_error_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_ERROR, "Dumping query plan for %{public}@", &v4, 0xCu);
  v3 = *MEMORY[0x1E69E9840];
}

void sub_1B7CED878(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7CED928(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEDA30(uint64_t a1, const char *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"can't have migration %d to %d fail without error!! (Begin Transaction)");
  sub_1B7B2641C();
  sub_1B7B2640C();
  sub_1B7AE0B60();
  sub_1B7AE0AC0(&dword_1B7AD5000, v2, v3, "ASSERTION FAILED: Condition is unexpectedly true: %s in %s at line %d [%@]", v4, v5, v6, v7, a1, a2, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEDAE0(uint64_t a1, const char *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"can't have migration %d to %d fail without error!! (Drop Triggers)");
  sub_1B7B2641C();
  sub_1B7B2640C();
  sub_1B7AE0B60();
  sub_1B7AE0AC0(&dword_1B7AD5000, v2, v3, "ASSERTION FAILED: Condition is unexpectedly true: %s in %s at line %d [%@]", v4, v5, v6, v7, a1, a2, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEDB90(uint64_t a1, const char *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"can't have migration %d to %d fail without error!! (Drop unknown indexes)");
  sub_1B7B2641C();
  sub_1B7B2640C();
  sub_1B7AE0B60();
  sub_1B7AE0AC0(&dword_1B7AD5000, v2, v3, "ASSERTION FAILED: Condition is unexpectedly true: %s in %s at line %d [%@]", v4, v5, v6, v7, a1, a2, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEDC40(uint64_t a1, const char *a2)
{
  v11 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"can't have migration  %d to %d fail without error!! (Actual migration)"));
  sub_1B7B2641C();
  sub_1B7B2640C();
  sub_1B7AE0B60();
  sub_1B7AE0AC0(&dword_1B7AD5000, v2, v3, "ASSERTION FAILED: Condition is unexpectedly true: %s in %s at line %d [%@]", v4, v5, v6, v7, a1, a2, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEDCF0(int a1, uint8_t *buf, os_log_t log)
{
  *buf = 67109120;
  *(buf + 1) = a1;
  _os_log_error_impl(&dword_1B7AD5000, log, OS_LOG_TYPE_ERROR, "Unable to perform database migration to %d - NO MIGRATOR FOUND", buf, 8u);
}

void sub_1B7CEDD38(int a1, uint8_t *buf, int a3, os_log_t log)
{
  *buf = 67109376;
  *(buf + 1) = a3;
  *(buf + 4) = 1024;
  *(buf + 10) = a1;
  _os_log_error_impl(&dword_1B7AD5000, log, OS_LOG_TYPE_ERROR, "Database version is newer, but internal build allows this state (dbver %d, expected %d)", buf, 0xEu);
}

void sub_1B7CEDD90(uint64_t *a1)
{
  sub_1B7B2DBE4(a1, *MEMORY[0x1E69E9840]);
  sub_1B7B2DBD8();
  sub_1B7AE0A8C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEDE40(uint64_t *a1)
{
  sub_1B7B2DBE4(a1, *MEMORY[0x1E69E9840]);
  sub_1B7B2DBD8();
  sub_1B7AE0A8C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEDEF0(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEDFA8(uint64_t *a1)
{
  sub_1B7B2DBE4(a1, *MEMORY[0x1E69E9840]);
  sub_1B7B2DBD8();
  sub_1B7AE0A8C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEE018(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEE0D4(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0AB0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x30u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEE1AC(uint64_t *a1)
{
  sub_1B7B2DBE4(a1, *MEMORY[0x1E69E9840]);
  sub_1B7B2DBD8();
  sub_1B7AE0A8C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEE244(NSObject *a1, const char *a2)
{
  v12 = *MEMORY[0x1E69E9840];
  v4 = 136315906;
  v5 = "op == nil || op->connection == nil || op->database == nil";
  v6 = 2080;
  v7 = "void IMDSqlOperationWasInitialized(IMDSqlOperation *)";
  v8 = 1024;
  v9 = 67;
  v10 = 2112;
  v11 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  _os_log_error_impl(&dword_1B7AD5000, a1, OS_LOG_TYPE_ERROR, "ASSERTION FAILED: Condition is unexpectedly true: %s in %s at line %d [%@]", &v4, 0x26u);
  v3 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEE318()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1B7AE0A98();
  sub_1B7AE0B74(&dword_1B7AD5000, v0, v1, "ASSERTION FAILED: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEE380(uint64_t a1, const char *a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  IMDSqlOperationErrorDescription(a2, a2, a3);
  sub_1B7B2FE64();
  sub_1B7AE0AE0(&dword_1B7AD5000, v3, v4, "Failed to create table %@ with error %@", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEE400(uint64_t a1, const char *a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  IMDSqlOperationErrorDescription(a2, a2, a3);
  sub_1B7B2FE64();
  sub_1B7AE0AE0(&dword_1B7AD5000, v3, v4, "Failed to drop table %@ with error %@", v5, v6, v7, v8, v10);
  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEE480(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_ERROR, "Failed to serialize user info for processing task: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEE520(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v2, v3, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEE5C8(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v2, v3, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEE670(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v2, v3, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEE718(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v2, v3, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEE7C0(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v2, v3, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEE868(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v2, v3, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEE910(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v2, v3, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEE9B8(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v2, v3, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEEA60(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v2, v3, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEEB08(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v2, v3, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEEBB0(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v2, v3, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEEC58(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v2, v3, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEED00(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v2, v3, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEEDA8(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v2, v3, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEEE50(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v2, v3, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEEF48(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v2, v3, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEEFF0(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v2, v3, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEF098(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v2, v3, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEF140(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v2, v3, "ASSERTION FAILED: Condition is unexpectedly true: %s in %s at line %d [%@]", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEF1E8(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v2, v3, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEF290(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"IMDSharedSqliteDatabase() should not be nil");
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v2, v3, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEF338()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEF3C4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL message passed to %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEF43C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL message passed to %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEF4B4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL message passed to %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEF52C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL message passed to %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEF5A4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL message passed to %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEF61C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL message passed to %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEF694(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL message passed to %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEF70C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL message passed when trying to get property: %ld", a5, a6, a7, a8, 0);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEF780()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEF808(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL message passed to %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEF880(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL message passed to %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEF938(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL message passed to %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEF9B0()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEFA38(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL message passed to %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEFAB0(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a2, a3, "ASSERTION FAILED: %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEFB1C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL message passed to %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEFB94(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL record passed to %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEFC0C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL dictionary passed to %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEFC84(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL handle passed to %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEFCFC(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL handle passed to %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEFD74(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL handle passed to %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEFDEC(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL handle passed to %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEFE64(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL handle passed to %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEFEDC(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL handle passed to %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEFF54(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL record passed to %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CEFFCC(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL dictionary passed to %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF0080()
{
  sub_1B7B43CA8();
  v9 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_localizedDescription(v0, v0, v1);
  sub_1B7B43C98();
  sub_1B7AE0AB0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF0120(void *a1, const char *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_localizedDescription(a1, a2, a3);
  sub_1B7AE0A98();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF01AC()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B7AE0A98();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF021C()
{
  sub_1B7AE0AA4();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B7CF0258()
{
  sub_1B7AE0AA4();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B7CF0294()
{
  sub_1B7AE0AA4();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B7CF02D0(uint64_t a1, const char *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_guid(*(a1 + 32), a2, a3);
  sub_1B7AE0A98();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF037C()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B90();
  sub_1B7AE0B00();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF0400()
{
  sub_1B7B43CA8();
  v11 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_fileTransferGUIDs(v0, v0, v1);
  objc_msgSend_count(v2, v3, v4);
  sub_1B7B43CB4();
  sub_1B7AE0AB0();
  _os_log_error_impl(v5, v6, v7, v8, v9, 0x20u);

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF04B4(void *a1, const char *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_fileTransferGUIDs(a1, a2, a3);
  sub_1B7AE0B90();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF054C()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B90();
  sub_1B7AE0B00();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x20u);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF05D0()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B90();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF064C()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B90();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF06C8()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF0748(void *a1, const char *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_guid(a1, a2, a3);
  sub_1B7AE0B90();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF07E0()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF0860()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF08E0()
{
  sub_1B7B43CA8();
  v9 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_guid(v0, v0, v1);
  sub_1B7B43CB4();
  sub_1B7AE0AB0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF098C(void *a1, const char *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_guid(a1, a2, a3);
  sub_1B7AE0B90();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF0A24(void *a1, const char *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_guid(a1, a2, a3);
  sub_1B7AE0B90();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF0ABC()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B7AE0A98();
  sub_1B7AE0B00();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF0B38(void *a1, const char *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_guid(a1, a2, a3);
  sub_1B7AE0B90();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF0BD0()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF0C50()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B90();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF0CCC(void *a1, const char *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  objc_msgSend_partNumber(a1, a2, a3);
  sub_1B7AE0AB0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF0D74()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B90();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF0DF0()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B90();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF0E6C()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF0EEC()
{
  sub_1B7B43CA8();
  v9 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_localizedDescription(v0, v0, v1);
  sub_1B7B43C98();
  sub_1B7AE0AB0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF0F8C(void *a1, const char *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_localizedDescription(a1, a2, a3);
  sub_1B7AE0A98();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF1018()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B7AE0A98();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF1088()
{
  sub_1B7B43CA8();
  v9 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_localizedDescription(v0, v0, v1);
  sub_1B7B43C98();
  sub_1B7AE0AB0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x16u);

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF1128(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B7B43CC8(a1, a2);
  v7 = objc_msgSend_localizedDescription(v4, v5, v6);
  *v3 = 138412290;
  *v2 = v7;
  sub_1B7B43CDC(&dword_1B7AD5000, v8, v9, "Recently Deleted | Failed to remove entries from chat_message_join: %@");
}

void sub_1B7CF1184(void *a1, const char *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_localizedDescription(a1, a2, a3);
  sub_1B7AE0A98();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF1210(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B7B43CC8(a1, a2);
  v7 = objc_msgSend_localizedDescription(v4, v5, v6);
  *v3 = 138412290;
  *v2 = v7;
  sub_1B7B43CDC(&dword_1B7AD5000, v8, v9, "Recently Deleted | Failed to add chat entry to unsynced_removed_recoverable_messages: %@");
}

void sub_1B7CF126C(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_localizedDescription(a2, a2, a3);
  sub_1B7B43C98();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF1314(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_localizedDescription(a2, a2, a3);
  sub_1B7B43C98();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF13BC(void *a1, const char *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_localizedDescription(a1, a2, a3);
  sub_1B7AE0A98();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF144C(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_localizedDescription(a2, a2, a3);
  sub_1B7B43C98();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF14F4()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B7AE0A98();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF1564(void *a1, const char *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_localizedDescription(a1, a2, a3);
  sub_1B7AE0A98();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF15F4()
{
  sub_1B7AE0AA4();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B7CF1630()
{
  sub_1B7AE0AA4();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B7CF166C()
{
  sub_1B7AE0AA4();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B7CF16A8(void *a1, const char *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_localizedDescription(a1, a2, a3);
  sub_1B7AE0A98();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF1748(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v3, "[NSXPCConnection(IMDPersistence) ___imdp_persistenceServiceListener]");
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v6, v5, v4, @"NSXPCConnection+IMDPersistence.m", 24, @"Attempt to use cleanup handlers on NSXPCConnection not managed by IMDPersistenceServiceListener");
}

void sub_1B7CF1810(_DWORD *a1, void *a2)
{
  *a1 = 136315138;
  *a2 = "Boolean __findOrCreateiMessageAttachmentsForLegacyGUID(CSDBSqliteConnection *, CFStringRef, int64_t)";
  sub_1B7B543FC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0xCu);
}

void sub_1B7CF185C(_BYTE *a1, _BYTE *a2)
{
  sub_1B7B54408(a1, a2);
  sub_1B7B543FC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_1B7CF1890(float *a1, _DWORD *a2)
{
  sub_1B7AE0BA4(a1, a2, 1.5047e-36);
  sub_1B7B543FC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1B7CF18D0(float *a1, _DWORD *a2)
{
  sub_1B7AE0BA4(a1, a2, 1.5047e-36);
  sub_1B7B543FC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1B7CF1910(_BYTE *a1, _BYTE *a2)
{
  sub_1B7B54408(a1, a2);
  sub_1B7B543FC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_1B7CF1944(float *a1, _DWORD *a2)
{
  sub_1B7AE0BA4(a1, a2, 1.5047e-36);
  sub_1B7B543FC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1B7CF1984(float *a1, _DWORD *a2)
{
  sub_1B7AE0BA4(a1, a2, 1.5047e-36);
  sub_1B7B543FC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1B7CF19C4(float *a1, _DWORD *a2)
{
  sub_1B7AE0BA4(a1, a2, 1.5047e-36);
  sub_1B7B543FC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1B7CF1A04(_BYTE *a1, _BYTE *a2)
{
  sub_1B7B54408(a1, a2);
  sub_1B7B543FC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_1B7CF1A38(os_log_t log)
{
  v3 = *MEMORY[0x1E69E9840];
  v2[0] = 67109120;
  v2[1] = 1;
  _os_log_error_impl(&dword_1B7AD5000, log, OS_LOG_TYPE_ERROR, "[Database] ERROR: Failed to create new message row. SQLite error: %d", v2, 8u);
  v1 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF1AB8(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_ERROR, "[Database] ERROR: **** Failed ingesting legacy message with row ID: %d", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF1B30(float *a1, _DWORD *a2)
{
  sub_1B7AE0BA4(a1, a2, 1.5047e-36);
  sub_1B7B543FC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 8u);
}

void sub_1B7CF1B70()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B10();
  sub_1B7B54418();
  sub_1B7B543FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF1BE8()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B10();
  sub_1B7B54418();
  sub_1B7B543FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x1Cu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF1C60()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B7B543FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF1CE4()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B10();
  sub_1B7B543FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF1D58(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF1E14(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF1ED0(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF1F8C(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF2048(uint64_t a1, const char *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = IMDSqlOperationErrorDescription(a1, a2, a3);
  sub_1B7AE0A98();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF20D4(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF2190(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF224C(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF2308(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF23C4(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF2480(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF253C(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF25F8(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF26B4(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"SQL operation results never read from statement");
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF2770(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF282C(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF28E8(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF29A4(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"trying to commit transaction when we don't have one.");
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF2A60(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF2B1C(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF2BD8(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"Trying to revert transaction when we don't have one. This may mean we have a transaction open on this same sql_connection with another IMDSqlOperation");
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF2C94(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF2D50(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF2E0C(uint64_t a1, const char *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = IMDSqlOperationErrorDescription(a1, a2, a3);
  sub_1B7AE0A98();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF2EDC(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF2F98(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF3054(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF3110(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF31CC(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF3288(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x26u);

  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF3344(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL chat passed to %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF33BC(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL chat passed to %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF3434(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL chat passed to %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF34AC(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL chat passed to %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF3524(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(*(*(a1 + 32) + 8) + 40);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_1B7AD5000, log, OS_LOG_TYPE_ERROR, "Error fetch identifiers for chat records with guid %@ : %@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF35B8(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL chat passed to %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF3630(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "%s can only be called from the server process", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF36A8(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL chat passed to %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF3720(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL chat passed to %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF3798(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL chat passed to %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF3810(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL chat passed to %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF3888(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL chat passed to %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF3900(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v2, v3, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF39B8(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v2, v3, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF3A70(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL chat passed to %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF3AE8(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL chat passed to %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF3B60(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL record passed to %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF3BD8(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL dictionary passed to %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF3C50(void *a1, char *a2, uint64_t a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v5 = 138412290;
  v6 = objc_msgSend_localizedDescription(a1, a2, a3);
  _os_log_error_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_ERROR, "Sqlite3 Error: %@", &v5, 0xCu);
  v4 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF3CDC(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_ERROR, "error saving wallpaper to contact: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF3D54(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_ERROR, "failed to get a contact with handle %@ to save wallpaper", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF3DCC(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_ERROR, "Not setting syndication identifier because attachment index was not found in attributed body. attachmentGUID: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF3E44(uint64_t a1, uint64_t a2, os_log_t log)
{
  v10 = *MEMORY[0x1E69E9840];
  v4 = 136315650;
  v5 = "+[IMDAttachmentSyndicationUtilities _attachmentGUIDIsSyndicatable:syndicationIdentifier:attachmentUTI:attributedBody:encodedSyndicationRanges:isCMM:verbose:]";
  v6 = 2112;
  v7 = a1;
  v8 = 2112;
  v9 = a2;
  _os_log_error_impl(&dword_1B7AD5000, log, OS_LOG_TYPE_ERROR, "%s Could not derive message part range from attachment GUID %@ (syndicationIdentifier %@)", &v4, 0x20u);
  v3 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF3EF0(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_DEBUG, "File already exists at path %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF3FAC(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL attachment passed to %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF4024(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL attachment passed to %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF409C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL attachment passed to %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF4114(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL attachment passed to %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF418C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL attachment passed to %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF4204(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL attachment passed to %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF427C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL attachment passed to %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF42F4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL attachment passed to %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF436C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL attachment passed to %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF43E4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL attachment passed to %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF445C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL attachment passed to %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF44D4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL attachment passed to %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF454C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL attachment passed to %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF45C4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL attachment passed to %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF463C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL attachment passed to %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF46B4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL attachment passed to %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF472C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL attachment passed to %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF47A4(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL attachment passed to %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF481C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL attachment passed to %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF4894(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL attachment passed to %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF490C(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL dictionary passed to %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF4984(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "NULL attachment passed to %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF49FC(uint64_t a1, void *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_localizedDescription(a2, a2, a3);
  v7 = 138412546;
  v8 = a1;
  v9 = 2112;
  v10 = v5;
  _os_log_error_impl(&dword_1B7AD5000, a3, OS_LOG_TYPE_ERROR, "CloudSync.message | Failed to update ck_sync_state for recordIDs: %@ with error: %@", &v7, 0x16u);

  v6 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF4AB0(void *a1, char *a2, uint64_t a3)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_localizedDescription(a1, a2, a3);
  v6 = 138412290;
  v7 = v4;
  _os_log_error_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_ERROR, "CloudSync.message | Query returned an error: %@", &v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF4B48(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_ERROR, "CloudSync.message | Update status Query success for: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF4BC0()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B7AE0A98();
  sub_1B7AE0B00();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x12u);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF4C7C()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF4CFC()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B90();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF4D78()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B7AE0A98();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF4DE8()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B7AE0A98();
  sub_1B7AE0B00();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF4E64()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B90();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF4EE0()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF4F60()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B7AE0A98();
  sub_1B7AE0B00();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF4FDC()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B7AE0A98();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF508C()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF510C()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B7AE0A98();
  sub_1B7AE0B00();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF5188()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B7AE0A98();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF523C(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF52EC(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF539C(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF544C(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"Sqlite database path is nil");
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF54FC(uint64_t a1, uint8_t *buf, os_log_t log)
{
  *buf = 136315906;
  *(buf + 4) = "_MessagesRecordStore";
  *(buf + 6) = 2080;
  *(buf + 14) = "CSDBThreadedRecordStoreRef IMDSharedThreadedRecordStore(void)";
  *(buf + 11) = 1024;
  *(buf + 6) = 169;
  *(buf + 14) = 2112;
  *(buf + 30) = a1;
  _os_log_error_impl(&dword_1B7AD5000, log, OS_LOG_TYPE_ERROR, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", buf, 0x26u);
}

void sub_1B7CF557C(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"CSDBCreateThreadedRecordStore failed");
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF562C(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF56DC(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF578C(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"recordStore is nil, will not initialize");
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF583C(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF58EC(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF59D0(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF5A80(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF5B64(uint64_t a1, uint64_t a2, uint8_t *buf, os_log_t log)
{
  *buf = 134218242;
  *(buf + 4) = a1;
  *(buf + 6) = 2112;
  *(buf + 14) = a2;
  _os_log_error_impl(&dword_1B7AD5000, log, OS_LOG_TYPE_ERROR, "Creating triggers for %p after db init failed: %@", buf, 0x16u);
}

void sub_1B7CF5BBC(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF5C6C(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF5D1C(uint64_t a1, const char *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  objc_msgSend_schemaVersion(IMDLegacyRecordBridge, a2, a3);
  sub_1B7B6C044();
  sub_1B7AE0AB0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x18u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF5DC4(uint64_t a1, const char *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  objc_msgSend_schemaVersion(IMDLegacyRecordBridge, a2, a3);
  sub_1B7B6C044();
  sub_1B7AE0AB0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x18u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF5E6C(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF5F1C(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF5FCC(uint64_t a1, const char *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  objc_msgSend_schemaVersion(IMDLegacyRecordBridge, a2, a3);
  sub_1B7AE0AB0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xEu);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF6104(int *a1, void **a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = *a1;
  if (*a2)
  {
    objc_msgSend_localizedDescription(*a2, a2, a3);
  }

  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x12u);
  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF61AC(uint64_t a1, const char *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  objc_msgSend_timeIntervalSinceReferenceDate(MEMORY[0x1E695DF00], a2, a3);
  sub_1B7AE0AB0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF6248(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF62F8(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF63A8(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_ERROR, "Database Reindexing the DB failed with SQLite result: %d", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF6420(int a1, NSObject *a2)
{
  v4 = *MEMORY[0x1E69E9840];
  v3[0] = 67109120;
  v3[1] = a1;
  _os_log_error_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_ERROR, "Database Vacuuming failed with SQLite result: %d", v3, 8u);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF64CC(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF657C(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v2, v3, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF6624(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v2, v3, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF66CC(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v2, v3, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF6774(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v2, v3, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF681C(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v2, v3, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF68C4(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v2, v3, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF696C(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v2, v3, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF6A14(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v2, v3, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF6ABC(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v2, v3, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF6B64(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v2, v3, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF6C0C(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v2, v3, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF6CB4(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v2, v3, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF6D5C(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v2, v3, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF6E04(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v2, v3, "ASSERTION FAILED: Condition is unexpectedly true: %s in %s at line %d [%@]", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF6EAC(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v2, v3, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF6F90(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v2, v3, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF7038(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v2, v3, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF70E0(uint64_t a1, const char *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0A6C(&dword_1B7AD5000, v2, v3, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v4, v5, v6, v7, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF7188(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1B7AD5000, log, OS_LOG_TYPE_ERROR, "__syncXPCIMDMessageStoreSendXPCMessage failed to copy the xpc_connection_t!", buf, 2u);
}

void sub_1B7CF71C8(uint8_t *buf, _BYTE *a2, os_log_t log)
{
  *buf = 0;
  *a2 = 0;
  _os_log_error_impl(&dword_1B7AD5000, log, OS_LOG_TYPE_ERROR, "__syncXPCIMDMessageStoreSendXPCMessage failed several consecutive times - sleeping for 1+ the launchd throttle time.", buf, 2u);
}

void sub_1B7CF7240(char a1, uint64_t a2, os_log_t log)
{
  v8 = *MEMORY[0x1E69E9840];
  v4 = 134218240;
  v5 = a2;
  v6 = 1024;
  v7 = a1 & 1;
  _os_log_debug_impl(&dword_1B7AD5000, log, OS_LOG_TYPE_DEBUG, "Finished legacy command %lli async %{BOOL}d", &v4, 0x12u);
  v3 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF733C(uint64_t a1, NSObject *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 40);
  v3 = *(a1 + 48);
  v5 = 134218240;
  v6 = v2;
  v7 = 1024;
  v8 = v3;
  _os_log_debug_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_DEBUG, "Finished legacy command %lli async %{BOOL}d", &v5, 0x12u);
  v4 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF73C8(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_ERROR, "FAFetchFamilyCircleRequest failed %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF7440(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, "Class getFAFetchFamilyCircleRequestClass(void)_block_invoke");
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v3, v6, v5, @"IMDFamilyInviteNotificationContext.m", 23, @"Unable to find class %s", "FAFetchFamilyCircleRequest");

  __break(1u);
}

void sub_1B7CF74BC(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, "void *FamilyCircleLibrary(void)");
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v4, v7, v6, @"IMDFamilyInviteNotificationContext.m", 22, @"%s", *a1);

  __break(1u);
}

void sub_1B7CF753C(void *a1, const char *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_localizedDescription(a1, a2, a3);
  sub_1B7AE0A98();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF75CC(void *a1, const char *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_localizedDescription(a1, a2, a3);
  sub_1B7AE0A98();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF765C(void *a1, const char *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_localizedDescription(a1, a2, a3);
  sub_1B7AE0A98();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF76EC(void *a1, const char *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_localizedDescription(a1, a2, a3);
  sub_1B7AE0A98();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF777C(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_localizedDescription(a2, a2, a3);
  sub_1B7AE0B28();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF781C(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_localizedDescription(a2, a2, a3);
  sub_1B7AE0B28();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF78BC(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_localizedDescription(a2, a2, a3);
  sub_1B7AE0B28();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF795C(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = objc_msgSend_localizedDescription(a2, a2, a3);
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_1B7AD5000, a4, OS_LOG_TYPE_ERROR, "Recently Deleted | Failed to add chat entry to unsynced_removed_recoverable_messages: %@", a1, 0xCu);
}

void sub_1B7CF79D4(void *a1, const char *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_localizedDescription(a1, a2, a3);
  sub_1B7AE0A98();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF7A64(void *a1, const char *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_localizedDescription(a1, a2, a3);
  sub_1B7AE0A98();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF7AF4()
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1B7AE0A98();
  _os_log_error_impl(&dword_1B7AD5000, v0, OS_LOG_TYPE_ERROR, "Recently Deleted | Cannot recover: Could not find attributed body for messageGUID: %@, rebuilding from scratch", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF7B68(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_localizedDescription(a2, a2, a3);
  sub_1B7B2FE64();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF7C04(void *a1, const char *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_localizedDescription(a1, a2, a3);
  sub_1B7AE0A98();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF7C90(void *a1, const char *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_localizedDescription(a1, a2, a3);
  sub_1B7AE0A98();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF7D1C(uint8_t *buf, uint64_t a2, void *a3, os_log_t log)
{
  v4 = *(*a2 + 40);
  *buf = 138412290;
  *a3 = v4;
  _os_log_error_impl(&dword_1B7AD5000, log, OS_LOG_TYPE_ERROR, "Recently Deleted | attributedBodyPart is nil for message guid %@", buf, 0xCu);
}

void sub_1B7CF7D70(uint64_t a1, void *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_localizedDescription(a2, a2, a3);
  sub_1B7B2FE64();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);

  v9 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF7E0C(void *a1, const char *a2, uint64_t a3)
{
  v10 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_localizedDescription(a1, a2, a3);
  sub_1B7AE0A98();
  sub_1B7AE0AB0();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0xCu);

  v9 = *MEMORY[0x1E69E9840];
}

uint64_t sub_1B7CF7EAC(uint64_t a1, void *a2)
{
  v3 = a2;
  if (a1)
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass() & 1) != 0 || (objc_opt_class(), (objc_opt_isKindOfClass()))
    {
      LOBYTE(a1) = 1;
    }

    else
    {
      objc_opt_class();
      LOBYTE(a1) = objc_opt_isKindOfClass();
    }
  }

  return a1 & 1;
}

id sub_1B7CF7F3C(void *a1, void *a2)
{
  v26 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (a1)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    sub_1B7AE0B40();
    v6 = v4;
    sub_1B7AE0BD0();
    v10 = objc_msgSend_countByEnumeratingWithState_objects_count_(v7, v8, v9);
    if (v10)
    {
      v11 = v10;
      v12 = *v25;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v25 != v12)
          {
            objc_enumerationMutation(v6);
          }

          v15 = sub_1B7B8195C(a1, *(v24 + 8 * i));
          if (v15)
          {
            objc_msgSend_addObject_(v2, v14, v15);
          }
        }

        sub_1B7AE0BD0();
        v11 = objc_msgSend_countByEnumeratingWithState_objects_count_(v6, v16, v17);
      }

      while (v11);
    }

    v18 = MEMORY[0x1E696AEC0];
    v20 = objc_msgSend_componentsJoinedByString_(v2, v19, @", ");
    a1 = objc_msgSend_stringWithFormat_(v18, v21, @"( %@)", v20);
  }

  v22 = *MEMORY[0x1E69E9840];

  return a1;
}

__CFString *sub_1B7CF80BC(__CFString *a1, void *a2)
{
  v33 = *MEMORY[0x1E69E9840];
  v4 = a2;
  if (a1)
  {
    v5 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v6 = sub_1B7AE0B40();
    v9 = objc_msgSend_subpredicates(v4, v7, v8, v6);
    sub_1B7AE0BD0();
    v13 = objc_msgSend_countByEnumeratingWithState_objects_count_(v10, v11, v12);
    if (v13)
    {
      v14 = v13;
      v15 = *v32;
      do
      {
        for (i = 0; i != v14; ++i)
        {
          if (*v32 != v15)
          {
            objc_enumerationMutation(v9);
          }

          v17 = sub_1B7B81744(a1, *(v31 + 8 * i));
          objc_msgSend_addObject_(v2, v18, v17);
        }

        sub_1B7AE0BD0();
        v14 = objc_msgSend_countByEnumeratingWithState_objects_count_(v9, v19, v20);
      }

      while (v14);
    }

    v21 = MEMORY[0x1E696AEC0];
    v24 = objc_msgSend_compoundPredicateType(v4, v22, v23);
    v25 = sub_1B7B818FC(a1, v24);
    v27 = objc_msgSend_componentsJoinedByString_(v2, v26, v25);
    a1 = objc_msgSend_stringWithFormat_(v21, v28, @"( %@)", v27);
  }

  v29 = *MEMORY[0x1E69E9840];

  return a1;
}

uint64_t sub_1B7CF825C(uint64_t a1, void *a2)
{
  if (!sub_1B7CF7EAC(a1, a2))
  {
    v7 = MEMORY[0x1E695DF30];
    v8 = objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], v4, @"Invalid predicate, unsupported constant %@", a2);
    v10 = objc_msgSend_exceptionWithName_reason_userInfo_(v7, v9, 0, v8, 0);
    v11 = v10;

    objc_exception_throw(v10);
  }

  v5 = *(a1 + 32);

  return objc_msgSend_addObject_(v5, v4, a2);
}

void sub_1B7CF82FC(uint64_t a1, const char *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_count(*(a1 + 32), a2, a3);
  v7 = 134218242;
  v8 = v5;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_1B7AD5000, a3, OS_LOG_TYPE_ERROR, "Failed to donate %llu interactions: %@", &v7, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF83C4(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_ERROR, "Error donating intent interaction = %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF848C(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, "void *NewsURLResolutionLibrary(void)");
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v4, v7, v6, @"IMDCoreSpotlightIndexingManager+SharedWithYou.m", 46, @"%s", *a1);

  __break(1u);
}

void sub_1B7CF8598(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, "Class getNRURLResolutionManagerClass(void)_block_invoke");
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v3, v6, v5, @"IMDCoreSpotlightIndexingManager+SharedWithYou.m", 47, @"Unable to find class %s", "NRURLResolutionManager");

  __break(1u);
}

void sub_1B7CF8614(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, "Class getSLCollaborationHandshakeControllerClass(void)_block_invoke");
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v3, v6, v5, @"IMDCoreSpotlightIndexingManager+SharedWithYou.m", 50, @"Unable to find class %s", "SLCollaborationHandshakeController");

  __break(1u);
}

void sub_1B7CF8690(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, "void *SocialLayerLibrary(void)");
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v4, v7, v6, @"IMDCoreSpotlightIndexingManager+SharedWithYou.m", 49, @"%s", *a1);

  __break(1u);
}

void sub_1B7CF8808(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_ERROR, "No CKBundleIDs found for URL with messageGUID: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF8880(uint64_t a1, NSObject *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = 138412546;
  v4 = 0;
  v5 = 2112;
  v6 = a1;
  _os_log_error_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_ERROR, "Unable to archive collaboration Metadata %@, error %@", &v3, 0x16u);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF89C4(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, "Class getLPLinkMetadataSharedWithYouTransformerClass(void)_block_invoke");
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v3, v6, v5, @"IMDSharedWithYouMetadataManager.m", 45, @"Unable to find class %s", "LPLinkMetadataSharedWithYouTransformer");

  __break(1u);
}

void sub_1B7CF8A40(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, "void *LinkPresentationLibrary(void)");
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v4, v7, v6, @"IMDSharedWithYouMetadataManager.m", 44, @"%s", *a1);

  __break(1u);
}

void sub_1B7CF8AD4(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_debug_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_DEBUG, "Skipping donation of message %@ to SmartReplies due to age", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF8B4C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, "Class getSROSmartRepliesMessageClass(void)_block_invoke");
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v3, v6, v5, @"IMDSmartRepliesMessageDonationJob.m", 25, @"Unable to find class %s", "SROSmartRepliesMessage");

  __break(1u);
}

void sub_1B7CF8BC8(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, "void *SmartRepliesLibrary(void)");
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v4, v7, v6, @"IMDSmartRepliesMessageDonationJob.m", 22, @"%s", *a1);

  __break(1u);
}

void sub_1B7CF8C48(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, "Class getSROSmartRepliesSuggestionRequestClass(void)_block_invoke");
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v3, v6, v5, @"IMDSmartRepliesMessageDonationJob.m", 24, @"Unable to find class %s", "SROSmartRepliesSuggestionRequest");

  __break(1u);
}

void sub_1B7CF8CC4(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, "Class getSROSmartRepliesManagerClass(void)_block_invoke");
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v3, v6, v5, @"IMDSmartRepliesMessageDonationJob.m", 23, @"Unable to find class %s", "SROSmartRepliesManager");

  __break(1u);
}

void sub_1B7CF8DA4(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_ERROR, "Failed to fetch client state: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF8E30(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v3, "[IMDCoreSpotlightIndexingManager init]");
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v6, v5, v4, @"IMDCoreSpotlightIndexingManager.m", 48, @"IMDCoreSpotlightIndexingManager called when spotlight refactor is disabled!");
}

void sub_1B7CF8EBC(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_ERROR, "Failed to check if we should sanitize indexes, suspending reindexing: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF8F34(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_fault_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_FAULT, "Failed to fetch client state: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF8FEC()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF906C()
{
  sub_1B7AE0AA4();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B7CF90A8()
{
  sub_1B7AE0AA4();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B7CF90F8(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v3, "[IMDLegacyCoreSpotlightManager init]");
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v6, v5, v4, @"IMDLegacyCoreSpotlight.m", 1158, @"IMDLegacyCoreSpotlightManager called when spotlight refactor is enabled!");
}

void sub_1B7CF91C0(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "Invalid guid passed in. Skipping %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF9238(NSObject *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9 = *MEMORY[0x1E69E9840];
  sub_1B7AE0B74(&dword_1B7AD5000, a1, a3, "Invalid guid passed in. Skipping %s", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF92D8()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1B7AE0A98();
  sub_1B7AE0B74(&dword_1B7AD5000, v0, v1, "Timed out indexing %@, but an override is set, not exiting!", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF9340()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1B7AE0A98();
  sub_1B7AE0B74(&dword_1B7AD5000, v0, v1, "Timed out indexing %@, likely have a hung thread, exiting!", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF93A8(void *a1, char *a2, NSObject *a3)
{
  v17 = *MEMORY[0x1E69E9840];
  v9 = 134349826;
  v10 = objc_msgSend_count(a1, a2, a3);
  v11 = 2050;
  v12 = objc_msgSend_count(a2, v6, v7);
  v13 = 2112;
  v14 = a1;
  v15 = 2112;
  v16 = a2;
  _os_log_error_impl(&dword_1B7AD5000, a3, OS_LOG_TYPE_ERROR, "Not attempting to index malformed message/chat pair. message dict has %{public}lld entries, chat dict has %{public}lld entries. %@ %@", &v9, 0x2Au);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF9484()
{
  sub_1B7AE0AA4();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B7CF94C0()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1B7AE0A98();
  sub_1B7AE0B74(&dword_1B7AD5000, v0, v1, "Invalid providerID: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF9550(void *a1, NSObject *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = *MEMORY[0x1E69E9840];
  v9 = HIDWORD(*a1);
  sub_1B7AE0B74(&dword_1B7AD5000, a2, a3, "Failed URL resolution with error %@", a5, a6, a7, a8, 2u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF9638(_BYTE *a1, _BYTE *a2)
{
  sub_1B7B54408(a1, a2);
  sub_1B7B543FC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_1B7CF966C(_BYTE *a1, _BYTE *a2)
{
  sub_1B7B54408(a1, a2);
  sub_1B7B543FC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_1B7CF96A0(_BYTE *a1, _BYTE *a2)
{
  sub_1B7B54408(a1, a2);
  sub_1B7B543FC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 2u);
}

void sub_1B7CF96D4(uint8_t *a1, void *a2, void *a3, NSObject *a4)
{
  v7 = objc_msgSend_description(a2, a2, a3);
  *a1 = 138412290;
  *a3 = v7;
  _os_log_error_impl(&dword_1B7AD5000, a4, OS_LOG_TYPE_ERROR, "Failed to unarchive Collaboration Metadata: %@. Not indexing this item.", a1, 0xCu);
}

void sub_1B7CF974C(void *a1, char *a2, uint64_t a3)
{
  v7 = *MEMORY[0x1E69E9840];
  v4 = objc_msgSend_description(a1, a2, a3);
  sub_1B7AE0A98();
  _os_log_error_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_ERROR, "Failed to obtain local proof of inclusion: %@", v6, 0xCu);

  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF97E4()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1B7AE0A98();
  sub_1B7AE0B74(&dword_1B7AD5000, v0, v1, "(1/2) Failed to generate searchable chat item for chat dictionary %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF984C()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1B7AE0A98();
  sub_1B7AE0B74(&dword_1B7AD5000, v0, v1, "(1/2) Failed to generate searchable chat item with error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF9940()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B7AE0A98();
  sub_1B7BA8AD8();
  sub_1B7B543FC();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF99B8()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1B7AE0A98();
  sub_1B7AE0B74(&dword_1B7AD5000, v0, v1, "(2/2) Failed to generate searchable chat item with error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF9A20()
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1B7AE0A98();
  sub_1B7BA8AD8();
  _os_log_fault_impl(&dword_1B7AD5000, v0, OS_LOG_TYPE_FAULT, "Failed to serialize client state with error %@ client state %@", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF9AC4()
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1B7AE0A98();
  _os_log_fault_impl(&dword_1B7AD5000, v0, OS_LOG_TYPE_FAULT, "Failed to fetch client state: %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF9B38()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1B7AE0A98();
  sub_1B7AE0B74(&dword_1B7AD5000, v0, v1, "failed to save client state with error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF9BA0()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_1B7AE0A98();
  sub_1B7AE0B74(&dword_1B7AD5000, v0, v1, "Suspending reindexing for 30 minutes due to error %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF9C08(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, "Class getSROSmartRepliesManagerClass(void)_block_invoke");
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v3, v6, v5, @"IMDLegacyCoreSpotlight.m", 111, @"Unable to find class %s", "SROSmartRepliesManager");

  __break(1u);
}

void sub_1B7CF9C84(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, "void *SmartRepliesLibrary(void)");
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v4, v7, v6, @"IMDLegacyCoreSpotlight.m", 110, @"%s", *a1);

  __break(1u);
}

void sub_1B7CF9D04(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, "Class getSROSmartRepliesMessageClass(void)_block_invoke");
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v3, v6, v5, @"IMDLegacyCoreSpotlight.m", 113, @"Unable to find class %s", "SROSmartRepliesMessage");

  __break(1u);
}

void sub_1B7CF9D80(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, "Class getSROSmartRepliesSuggestionRequestClass(void)_block_invoke");
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v3, v6, v5, @"IMDLegacyCoreSpotlight.m", 112, @"Unable to find class %s", "SROSmartRepliesSuggestionRequest");

  __break(1u);
}

void sub_1B7CF9DFC(uint64_t a1)
{
  v9 = *MEMORY[0x1E69E9840];
  v1 = *(a1 + 40);
  v8 = *(a1 + 32);
  sub_1B7BA8AD8();
  sub_1B7B543FC();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x20u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF9E98(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_ERROR, "Failed to start accessing security scoped resource for %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF9F10(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_ERROR, "Failed setting need reindexing with error %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF9F88()
{
  sub_1B7BAFD78();
  v0 = *MEMORY[0x1E69E9840];
  sub_1B7BAFD84(v1, v2, v3);
  sub_1B7AE0BDC();
  sub_1B7AE0AE0(&dword_1B7AD5000, v4, v5, "Failed to delete %lu messages from Spotlight: %@", v6, v7, v8, v9, v11);
  v10 = *MEMORY[0x1E69E9840];
}

void sub_1B7CF9FFC()
{
  sub_1B7BAFD78();
  v0 = *MEMORY[0x1E69E9840];
  sub_1B7BAFD84(v1, v2, v3);
  sub_1B7AE0BDC();
  sub_1B7AE0AE0(&dword_1B7AD5000, v4, v5, "Failed to delete %lu transfers from Spotlight: %@", v6, v7, v8, v9, v11);
  v10 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFA070(uint64_t a1, uint64_t a2, os_log_t log)
{
  v9 = *MEMORY[0x1E69E9840];
  v3 = *(a1 + 32);
  v5 = 138412546;
  v6 = v3;
  v7 = 2112;
  v8 = a2;
  _os_log_error_impl(&dword_1B7AD5000, log, OS_LOG_TYPE_ERROR, "Failed to delete chat %@ from Spotlight: %@", &v5, 0x16u);
  v4 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFA0FC()
{
  sub_1B7BAFD78();
  v0 = *MEMORY[0x1E69E9840];
  sub_1B7BAFD84(v1, v2, v3);
  sub_1B7AE0BDC();
  sub_1B7AE0AE0(&dword_1B7AD5000, v4, v5, "Failed adding %lu chats from CoreSpotlight with error %@", v6, v7, v8, v9, v11);
  v10 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFA170()
{
  sub_1B7BAFD78();
  v0 = *MEMORY[0x1E69E9840];
  sub_1B7BAFD84(v1, v2, v3);
  sub_1B7AE0BDC();
  sub_1B7AE0AE0(&dword_1B7AD5000, v4, v5, "Failed adding %ld message GUIDs to Spotlight with error %@", v6, v7, v8, v9, v11);
  v10 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFA1E4()
{
  sub_1B7BAFD78();
  v0 = *MEMORY[0x1E69E9840];
  sub_1B7BAFD84(v1, v2, v3);
  sub_1B7AE0BDC();
  sub_1B7AE0AE0(&dword_1B7AD5000, v4, v5, "Finished re-indexing %lu messages with error %@", v6, v7, v8, v9, v11);
  v10 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFA38C(NSObject *a1)
{
  if (os_log_type_enabled(a1, OS_LOG_TYPE_INFO))
  {
    *v2 = 0;
    _os_log_impl(&dword_1B7AD5000, a1, OS_LOG_TYPE_INFO, "IMDCoreSpotlightMessageBodyIndexer - Poison pill abort detected, crashing!", v2, 2u);
  }
}

void sub_1B7CFA4A0(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, "void *DataDetectorsCoreLibrary(void)");
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v4, v7, v6, @"IMDCoreSpotlightIndexHelpers.m", 76, @"%s", *a1);

  __break(1u);
}

void sub_1B7CFA534(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_clientState(a2, a2, a3);
  sub_1B7AE0B54();
  sub_1B7AE0AE0(&dword_1B7AD5000, v4, v5, "Failed to fetch client state with error %@ client state %@", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFA5D4(void **a1, const char *a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_context(*a1, a2, a3);
  v6 = objc_msgSend_oldestFullReindexMessageGUID(v3, v4, v5);
  sub_1B7AE0B54();
  sub_1B7AE0AE0(&dword_1B7AD5000, v7, v8, "Found no row ID for GUID %@ error %@", v9, v10, v11, v12, 2u);

  v13 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFA684(uint64_t a1, void *a2, uint64_t a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_clientState(a2, a2, a3);
  sub_1B7AE0B54();
  sub_1B7AE0AE0(&dword_1B7AD5000, v4, v5, "Failed to serialize client state with error %@ client state %@", v6, v7, v8, v9, 2u);

  v10 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFA728(uint64_t a1, const char *a2, NSObject *a3)
{
  v18 = *MEMORY[0x1E69E9840];
  v5 = (a1 + 32);
  v6 = objc_msgSend_transactionID(*(a1 + 32), a2, a3);
  v9 = objc_msgSend_index(*v5, v7, v8);
  v13 = 138412802;
  v14 = v6;
  sub_1B7AE0B54();
  v15 = a2;
  v16 = v10;
  v17 = v11;
  _os_log_error_impl(&dword_1B7AD5000, a3, OS_LOG_TYPE_ERROR, "IMDCoreSpotlightIndexSearchableItems: indexing transaction %@ failed with error %@. Using Index %@", &v13, 0x20u);

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFA8CC(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, "Class getLPiTunesMediaSongMetadataClass(void)_block_invoke");
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v3, v6, v5, @"IMDCoreSpotlightRichLinkIndexer.m", 38, @"Unable to find class %s", "LPiTunesMediaSongMetadata");

  __break(1u);
}

void sub_1B7CFA948(void *a1, const char *a2, uint64_t a3)
{
  v4 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  v6 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v5, "void *LinkPresentationLibrary(void)");
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v4, v7, v6, @"IMDCoreSpotlightRichLinkIndexer.m", 36, @"%s", *a1);

  __break(1u);
}

void sub_1B7CFA9C8(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, "Class getLPiTunesMediaAlbumMetadataClass(void)_block_invoke");
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v3, v6, v5, @"IMDCoreSpotlightRichLinkIndexer.m", 39, @"Unable to find class %s", "LPiTunesMediaAlbumMetadata");

  __break(1u);
}

void sub_1B7CFAA44(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, "Class getLPiTunesMediaArtistMetadataClass(void)_block_invoke");
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v3, v6, v5, @"IMDCoreSpotlightRichLinkIndexer.m", 40, @"Unable to find class %s", "LPiTunesMediaArtistMetadata");

  __break(1u);
}

void sub_1B7CFAAC0(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, "Class getLPiTunesMediaMusicVideoMetadataClass(void)_block_invoke");
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v3, v6, v5, @"IMDCoreSpotlightRichLinkIndexer.m", 41, @"Unable to find class %s", "LPiTunesMediaMusicVideoMetadata");

  __break(1u);
}

void sub_1B7CFAB3C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, "Class getLPiTunesMediaPodcastEpisodeMetadataClass(void)_block_invoke");
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v3, v6, v5, @"IMDCoreSpotlightRichLinkIndexer.m", 42, @"Unable to find class %s", "LPiTunesMediaPodcastEpisodeMetadata");

  __break(1u);
}

void sub_1B7CFABB8(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, "Class getLPiTunesMediaPodcastMetadataClass(void)_block_invoke");
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v3, v6, v5, @"IMDCoreSpotlightRichLinkIndexer.m", 43, @"Unable to find class %s", "LPiTunesMediaPodcastMetadata");

  __break(1u);
}

void sub_1B7CFAC34(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, "Class getLPiTunesMediaTVEpisodeMetadataClass(void)_block_invoke");
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v3, v6, v5, @"IMDCoreSpotlightRichLinkIndexer.m", 44, @"Unable to find class %s", "LPiTunesMediaTVEpisodeMetadata");

  __break(1u);
}

void sub_1B7CFACB0(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, "Class getLPiTunesMediaTVSeasonMetadataClass(void)_block_invoke");
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v3, v6, v5, @"IMDCoreSpotlightRichLinkIndexer.m", 45, @"Unable to find class %s", "LPiTunesMediaTVSeasonMetadata");

  __break(1u);
}

void sub_1B7CFAD2C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, "Class getLPiTunesMediaPlaylistMetadataClass(void)_block_invoke");
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v3, v6, v5, @"IMDCoreSpotlightRichLinkIndexer.m", 46, @"Unable to find class %s", "LPiTunesMediaPlaylistMetadata");

  __break(1u);
}

void sub_1B7CFADA8(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, "Class getLPiTunesMediaMovieMetadataClass(void)_block_invoke");
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v3, v6, v5, @"IMDCoreSpotlightRichLinkIndexer.m", 47, @"Unable to find class %s", "LPiTunesMediaMovieMetadata");

  __break(1u);
}

void sub_1B7CFAE24(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, "Class getLPiTunesMediaMovieBundleMetadataClass(void)_block_invoke");
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v3, v6, v5, @"IMDCoreSpotlightRichLinkIndexer.m", 48, @"Unable to find class %s", "LPiTunesMediaMovieBundleMetadata");

  __break(1u);
}

void sub_1B7CFAEA0(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, "Class getLPiTunesMediaRadioMetadataClass(void)_block_invoke");
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v3, v6, v5, @"IMDCoreSpotlightRichLinkIndexer.m", 52, @"Unable to find class %s", "LPiTunesMediaRadioMetadata");

  __break(1u);
}

void sub_1B7CFAF1C(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, "Class getLPAppleTVMetadataClass(void)_block_invoke");
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v3, v6, v5, @"IMDCoreSpotlightRichLinkIndexer.m", 49, @"Unable to find class %s", "LPAppleTVMetadata");

  __break(1u);
}

void sub_1B7CFAF98(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, "Class getLPAppleNewsMetadataClass(void)_block_invoke");
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v3, v6, v5, @"IMDCoreSpotlightRichLinkIndexer.m", 50, @"Unable to find class %s", "LPAppleNewsMetadata");

  __break(1u);
}

void sub_1B7CFB014(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, "Class getLPMapMetadataClass(void)_block_invoke");
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v3, v6, v5, @"IMDCoreSpotlightRichLinkIndexer.m", 37, @"Unable to find class %s", "LPMapMetadata");

  __break(1u);
}

void sub_1B7CFB090(uint64_t a1, const char *a2, uint64_t a3)
{
  v3 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  v5 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v4, "Class getLPLinkMetadataPresentationTransformerClass(void)_block_invoke");
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v3, v6, v5, @"IMDCoreSpotlightRichLinkIndexer.m", 51, @"Unable to find class %s", "LPLinkMetadataPresentationTransformer");

  __break(1u);
}

void sub_1B7CFB10C(uint64_t a1, const char *a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_messageGUIDs(*(a1 + 32), a2, a3);
  objc_msgSend_count(v3, v4, v5);
  sub_1B7AE0BDC();
  sub_1B7AE0AE0(&dword_1B7AD5000, v6, v7, "Error during selective reindexing of %ld messages: %@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFB1A4(uint64_t a1, const char *a2, uint64_t a3)
{
  v14 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_chatGUIDs(*(a1 + 32), a2, a3);
  objc_msgSend_count(v3, v4, v5);
  sub_1B7AE0BDC();
  sub_1B7AE0AE0(&dword_1B7AD5000, v6, v7, "Error during selective reindexing of %ld chats: %@", v8, v9, v10, v11, v13);

  v12 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFB270()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B7AE0A98();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFB2E0()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B7AE0A98();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFB384()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B7AE0A98();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFB3F4()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B7AE0A98();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFB514(os_log_t log)
{
  v6 = *MEMORY[0x1E69E9840];
  v2 = 136446466;
  v3 = "[IMDSpotlightQueryProvider _validateSpotlightClientStateWithLastError:attempts:completion:]";
  v4 = 1024;
  v5 = 5;
  _os_log_fault_impl(&dword_1B7AD5000, log, OS_LOG_TYPE_FAULT, "%{public}s Failed to inspect client state %d times - giving up", &v2, 0x12u);
  v1 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFB5BC(void *a1, char *a2)
{
  v7 = *MEMORY[0x1E69E9840];
  v3 = objc_msgSend_componentsJoinedByString_(a1, a2, @",");
  v5 = 138412290;
  v6 = v3;
  _os_log_error_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_ERROR, "Timed out indexing messages! Unfinished jobs: %@", &v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFB6F4(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(*a1 + 24);
  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_debug_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_DEBUG, "Indexing is currently throttled: %{BOOL}d", v4, 8u);
  v3 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFB774(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(*(*(a1 + 40) + 8) + 24);
  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_debug_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_DEBUG, "Indexing is currently throttled: %{BOOL}d", v4, 8u);
  v3 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFB7F8(os_log_t log, double a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 134217984;
  v4 = a2;
  _os_log_debug_impl(&dword_1B7AD5000, log, OS_LOG_TYPE_DEBUG, "Scheduling next throttle timer for %f seconds from now", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFB888(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v3, "+[IMDIndexingController sharedController]");
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v6, v5, v4, @"IMDIndexingController.m", 96, @"IMDIndexingController can only be accessed directly from IMDPersistenceAgent. Please use IMDIndexingController.queryProvider or IMDIndexingController.synchronousQueryProvider for process-agnostic access.");
}

void sub_1B7CFB914(uint64_t a1, const char *a2, uint64_t a3)
{
  v6 = objc_msgSend_currentHandler(MEMORY[0x1E696AAA8], a2, a3);
  v4 = objc_msgSend_stringWithUTF8String_(MEMORY[0x1E696AEC0], v3, "+[IMDIndexingController sharedController]");
  objc_msgSend_handleFailureInFunction_file_lineNumber_description_(v6, v5, v4, @"IMDIndexingController.m", 97, @"IMDIndexingController called when spotlight refactor is disabled!");
}

void sub_1B7CFB9DC(uint64_t a1, const char *a2, NSObject *a3)
{
  v11 = *MEMORY[0x1E69E9840];
  v5 = objc_msgSend_count(*(a1 + 32), a2, a3);
  v7 = 134218242;
  v8 = v5;
  v9 = 2112;
  v10 = a2;
  _os_log_error_impl(&dword_1B7AD5000, a3, OS_LOG_TYPE_ERROR, "Failed to index %ld messages with error %@", &v7, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFBA7C(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_ERROR, "!!! Failed to prepare for reindexing with error %@ - still scheduling reindexing tasks", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFBB38(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFBBE8(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFBC98(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFBD48(uint64_t a1, const char *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  objc_msgSend_schemaVersion(IMDLegacyRecordBridge, a2, a3);
  sub_1B7AE0AB0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xEu);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFBDE4(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 80);
  v4[0] = 67109120;
  v4[1] = v2;
  _os_log_error_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_ERROR, "Migration failed, made it to version: %d", v4, 8u);
  v3 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFBE60(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFBF10()
{
  sub_1B7AE0AA4();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B7CFBF4C()
{
  sub_1B7AE0AA4();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B7CFBF88(uint64_t a1, _DWORD *a2)
{
  *a2 = 136315906;
  sub_1B7BE9224(a2, "results");
  sub_1B7BE9214(v2, "CFArrayRef IMDMessageRecordCopyMessagesWithChatIdentifiersOnServicesUpToGUIDOrLimitWithOptionalThreadIdentifier(CFArrayRef, CFArrayRef, CFStringRef, CFStringRef, Boolean, Boolean, int64_t)");
  sub_1B7BE91E8(v3, v4, 1252);
  sub_1B7BE91FC(&dword_1B7AD5000, v5, v5, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v6);
}

void sub_1B7CFBFE4(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFC094(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"history query:");
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFC144(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"history query: rowID should be > 0");
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFC1F4(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFC2A4()
{
  sub_1B7AE0AA4();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B7CFC2E0(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFC390(uint64_t a1, char *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"Paged history query with numberOfMessagesBefore: %lld numberOfMessagesAfter: %lld", *(a1 + 40), *(a1 + 48));
  v5 = 136315906;
  v6 = "firstLoadResults";
  v7 = 2080;
  v8 = "CFArrayRef IMDMessageRecordCopyMessagesWithChatIdentifiersOnServicesBeforeAndAfterGUIDWithOptionalThreadIdentifier(CFArrayRef, CFArrayRef, CFStringRef, int64_t, int64_t, CFStringRef, Boolean *, Boolean *)_block_invoke_2";
  v9 = 1024;
  sub_1B7AE0B60();
  sub_1B7BE91FC(&dword_1B7AD5000, a2, v3, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", &v5);
  v4 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFC45C(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"Paged history query: rowID should be > 0");
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFC50C(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFC5BC(uint64_t a1, char *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"Paged history query with numberOfMessagesAfter: %lld for second load", *(a1 + 40));
  v5 = 136315906;
  v6 = "secondLoadResults";
  v7 = 2080;
  v8 = "CFArrayRef IMDMessageRecordCopyMessagesWithChatIdentifiersOnServicesBeforeAndAfterGUIDWithOptionalThreadIdentifier(CFArrayRef, CFArrayRef, CFStringRef, int64_t, int64_t, CFStringRef, Boolean *, Boolean *)_block_invoke_2";
  v9 = 1024;
  sub_1B7AE0B60();
  sub_1B7BE91FC(&dword_1B7AD5000, a2, v3, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", &v5);
  v4 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFC688(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, @"Paged history query: rowID should be > 0 for second load");
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFC738(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFC7E8()
{
  sub_1B7AE0AA4();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B7CFC824()
{
  sub_1B7AE0AA4();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B7CFC860(uint64_t a1, _DWORD *a2)
{
  *a2 = 136315906;
  sub_1B7BE9224(a2, "query");
  sub_1B7BE9214(v2, "IMDMessageRecordRef IMDMessageRecordCopyMessageMatchingBodyStringWithHandleSkippingServicesSkippingGUIDs(CFStringRef, CFStringRef, CFArrayRef, CFArrayRef, NSTimeInterval)");
  sub_1B7BE91E8(v3, v4, 2139);
  sub_1B7BE91FC(&dword_1B7AD5000, v5, v5, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v6);
}

void sub_1B7CFC8BC(uint64_t a1, _DWORD *a2)
{
  *a2 = 136315906;
  sub_1B7BE9224(a2, "query");
  sub_1B7BE9214(v2, "IMDMessageRecordRef IMDMessageRecordCopyMessageMatchingBodyStringWithHandleMatchingServiceMatchingSOSSkippingGUID(CFStringRef, CFStringRef, CFStringRef, BOOL, CFStringRef, NSTimeInterval)");
  sub_1B7BE91E8(v3, v4, 2189);
  sub_1B7BE91FC(&dword_1B7AD5000, v5, v5, "ASSERTION FAILED: %s is unexpectedly nil in %s at line %d [%@]", v6);
}

void sub_1B7CFC918()
{
  sub_1B7AE0AA4();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B7CFC954()
{
  sub_1B7AE0AA4();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B7CFC990()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B7AE0A98();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFCA00()
{
  sub_1B7AE0AA4();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B7CFCA3C()
{
  sub_1B7AE0AA4();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B7CFCA78(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  sub_1B7AE0A8C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFCAF0(void **a1, const char *a2, uint64_t a3)
{
  v9 = *MEMORY[0x1E69E9840];
  objc_msgSend_localizedDescription(*a1, a2, a3);
  sub_1B7AE0A98();
  sub_1B7AE0AB0();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0xCu);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFCB74()
{
  sub_1B7AE0AA4();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B7CFCBB0(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFCC74(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFCD24(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7BFDC7C();
  sub_1B7BFDC6C();
  sub_1B7BFDC58();
  sub_1B7AE0AB0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x30u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFCDE0(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7BFDC7C();
  sub_1B7BFDC6C();
  sub_1B7BFDC58();
  sub_1B7AE0AB0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x30u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFCE9C(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFCF4C(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7BFDC7C();
  sub_1B7BFDC6C();
  sub_1B7BFDC58();
  sub_1B7AE0AB0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x30u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFD008(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFD0B8(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFD168(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFD218(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFD2C8(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFD378(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7BFDC7C();
  sub_1B7BFDC6C();
  sub_1B7BFDC58();
  sub_1B7AE0AB0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x30u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFD434(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7BFDC7C();
  sub_1B7BFDC6C();
  sub_1B7BFDC58();
  sub_1B7AE0AB0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x30u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFD4F0(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFD5A0(uint64_t a1, const char *a2)
{
  v8 = *MEMORY[0x1E69E9840];
  objc_msgSend_stringWithFormat_(MEMORY[0x1E696AEC0], a2, &stru_1F2FA9728);
  sub_1B7AE0A5C();
  sub_1B7AE0A4C();
  sub_1B7AE0A38();
  sub_1B7AE0AB0();
  _os_log_error_impl(v2, v3, v4, v5, v6, 0x26u);
  v7 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFD650(uint64_t a1, NSObject *a2)
{
  v5 = *MEMORY[0x1E69E9840];
  v3 = 138412290;
  v4 = a1;
  _os_log_error_impl(&dword_1B7AD5000, a2, OS_LOG_TYPE_ERROR, "CustomFunctionBeforeDeleteChatDeleteChatBackground: %@", &v3, 0xCu);
  v2 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFD6C8()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B7AE0A98();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFD738()
{
  v3 = *MEMORY[0x1E69E9840];
  sub_1B7AE0A98();
  _os_log_debug_impl(&dword_1B7AD5000, v0, OS_LOG_TYPE_DEBUG, "Getting attachment record for attachment guid %@", v2, 0xCu);
  v1 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFD7AC()
{
  sub_1B7AE0AA4();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 2u);
}

void sub_1B7CFD7E8()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B7AE0A98();
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFD858(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  sub_1B7AE0A8C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFD8D0(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  sub_1B7AE0A8C();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1B7CFDA78()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_1B7AE0A8C();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

CFRange CFStringFind(CFStringRef theString, CFStringRef stringToFind, CFStringCompareFlags compareOptions)
{
  v3 = MEMORY[0x1EEDB7958](theString, stringToFind, compareOptions);
  result.length = v4;
  result.location = v3;
  return result;
}