uint64_t sub_100000CBC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);

  return _swift_release(v3);
}

id sub_100000DFC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ManagedSettingsExtension();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100000E54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}