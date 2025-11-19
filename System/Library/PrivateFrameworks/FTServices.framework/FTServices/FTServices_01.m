void sub_195964408(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 72);
  sub_195961B8C(a1, a2);
  sub_195929350();
  sub_195961B98();
  sub_1959476A8();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_195964484(uint64_t a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *(a1 + 32);
  sub_1959476A8();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0x16u);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_195964530(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 56);
  sub_195961B8C(a1, a2);
  sub_195929350();
  sub_195961B98();
  sub_1959476A8();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_1959645AC(uint64_t a1, uint64_t *a2)
{
  v9 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 88);
  sub_195961B8C(a1, a2);
  sub_195929350();
  sub_195961B98();
  sub_1959476A8();
  _os_log_error_impl(v3, v4, v5, v6, v7, 0x20u);
  v8 = *MEMORY[0x1E69E9840];
}

void sub_195964628()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_195961B58();
  sub_1959476A8();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_195964698(uint64_t *a1, uint64_t *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *a2;
  sub_195929350();
  sub_1959476A8();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
  v9 = *MEMORY[0x1E69E9840];
}

void sub_195964750(uint64_t *a1)
{
  v8 = *MEMORY[0x1E69E9840];
  v7 = *a1;
  sub_195929320();
  _os_log_error_impl(v1, v2, v3, v4, v5, 0xCu);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_1959647C8(uint64_t a1, uint64_t *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v3 = *a2;
  sub_195929350();
  sub_1959476A8();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
  v9 = *MEMORY[0x1E69E9840];
}

void sub_195964840(uint64_t a1, uint64_t *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *(a1 + 48);
  v3 = *a2;
  sub_195929350();
  sub_1959476A8();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
  v9 = *MEMORY[0x1E69E9840];
}

void sub_1959648B8()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_195929314();
  sub_195929320();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0xCu);
  v5 = *MEMORY[0x1E69E9840];
}

void sub_195964928(void *a1, NSObject *a2)
{
  v6 = *MEMORY[0x1E69E9840];
  v3 = [a1 accountProperties];
  sub_195929314();
  _os_log_error_impl(&dword_195925000, a2, OS_LOG_TYPE_ERROR, "*** Account properties: %@", v5, 0xCu);

  v4 = *MEMORY[0x1E69E9840];
}

void sub_1959649BC(uint64_t *a1, uint64_t *a2)
{
  v10 = *MEMORY[0x1E69E9840];
  v2 = *a1;
  v3 = *a2;
  sub_195929350();
  sub_1959476A8();
  _os_log_error_impl(v4, v5, v6, v7, v8, 0x16u);
  v9 = *MEMORY[0x1E69E9840];
}

void sub_195964A34()
{
  v8 = *MEMORY[0x1E69E9840];
  sub_195929314();
  sub_195961B70(&dword_195925000, v0, v1, "Assigning credential: %@", v2, v3, v4, v5, v7);
  v6 = *MEMORY[0x1E69E9840];
}

void sub_195964A9C()
{
  v3 = *MEMORY[0x1E69E9840];
  sub_195961B58();
  _os_log_fault_impl(&dword_195925000, v0, OS_LOG_TYPE_FAULT, "Failed saving account %@ with error: %@", v2, 0x16u);
  v1 = *MEMORY[0x1E69E9840];
}

void sub_195964B8C()
{
  v6 = *MEMORY[0x1E69E9840];
  sub_195929320();
  _os_log_error_impl(v0, v1, v2, v3, v4, 0x16u);
  v5 = *MEMORY[0x1E69E9840];
}