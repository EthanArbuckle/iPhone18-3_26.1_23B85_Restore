uint64_t type metadata accessor for DraftingViewController()
{
  result = qword_100008650;
  if (!qword_100008650)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id sub_10000144C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  if (a3)
  {
    sub_100001710();
    v6 = a4;
    v7 = sub_100001700();
  }

  else
  {
    v8 = a4;
    v7 = 0;
  }

  v11.receiver = a1;
  v11.super_class = type metadata accessor for DraftingViewController();
  v9 = objc_msgSendSuper2(&v11, "initWithNibName:bundle:", v7, a4);

  return v9;
}

id sub_1000014F0(void *a1, uint64_t a2, void *a3)
{
  v7.receiver = a1;
  v7.super_class = type metadata accessor for DraftingViewController();
  v4 = a3;
  v5 = objc_msgSendSuper2(&v7, "initWithCoder:", v4);

  if (v5)
  {
  }

  return v5;
}

id sub_100001568()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DraftingViewController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

id sub_100001664()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SceneDelegate();
  return objc_msgSendSuper2(&v2, "dealloc");
}